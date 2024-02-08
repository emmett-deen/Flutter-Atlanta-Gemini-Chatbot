import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:fatl_gemini_chatbot/domain/models/failure.dart';
import 'package:fatl_gemini_chatbot/domain/models/gemini_message.dart';
import 'package:fatl_gemini_chatbot/domain/repositories/gemini_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.dart';
part 'chat_cubit.freezed.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit({
    required this.geminiRepository,
  }) : super(
          const ChatState.initial(),
        );

  final GeminiRepository geminiRepository;

  final ChatUser currentUser = ChatUser(
    id: 'fatl',
    firstName: 'Flutter',
    lastName: 'Atlanta',
  );

  final ChatUser geminiUser = ChatUser(
    id: 'gemini',
    firstName: 'Gemini',
    lastName: 'Chatbot',
  );

  StreamSubscription<Either<Failure, List<GeminiMessage>>>?
      _messagesStreamSubscription;

  void startMessagesStream() {
    _messagesStreamSubscription = geminiRepository.streamMessages().listen(
      (messagesOrFailure) {
        messagesOrFailure.fold(
            (failure) => emit(
                  ChatState.error(
                    failure: failure,
                  ),
                ), (messages) {
          final chatMessages = _convertGeminiMessagesToChatMessages(messages);
          emit(
            ChatState.show(
              messages: chatMessages,
              currentUser: currentUser,
            ),
          );
        });
      },
    );
  }

  List<ChatMessage> _convertGeminiMessagesToChatMessages(
    List<GeminiMessage> messages,
  ) {
    final chatMessages = <ChatMessage>[];

    for (final geminiMessage in messages) {
      chatMessages.add(
        ChatMessage(
          text: geminiMessage.prompt,
          user: currentUser,
          createdAt: geminiMessage.createTime?.toDate() ?? DateTime.now(),
        ),
      );

      if (geminiMessage.response != null) {
        chatMessages.add(
          ChatMessage(
            text: geminiMessage.response!,
            user: geminiUser,
            createdAt: geminiMessage.status?.completeTime?.toDate() ??
                geminiMessage.status?.updateTime?.toDate() ??
                DateTime.now(),
          ),
        );
      }
    }

    return chatMessages..sort((a, b) => b.createdAt.compareTo(a.createdAt));
  }

  @override
  Future<void> close() {
    _messagesStreamSubscription?.cancel();
    return super.close();
  }

  Future<void> sendMessage(ChatMessage message) async {
    await geminiRepository.sendMessage(message.text).then(
      (failureOrVoid) {
        failureOrVoid.fold(
          (failure) => emit(
            ChatState.error(
              failure: failure,
            ),
          ),
          (_) => null,
        );
      },
    );
  }
}
