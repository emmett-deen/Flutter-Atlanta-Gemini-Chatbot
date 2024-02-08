import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:fatl_gemini_chatbot/domain/repositories/gemini_repository.dart';
import 'package:fatl_gemini_chatbot/presentation/pages/chat/cubit/chat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// [ChatPage] is a stateless widget that displays a simple text 'ChatPage'.
class ChatPage extends StatelessWidget {
  /// Creates an instance of [ChatPage].
  const ChatPage({super.key});

  /// Builds the widget tree for [ChatPage].
  ///
  /// Returns a [Scaffold] with a [Text] widget displaying 'ChatPage'.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit(
        geminiRepository: context.read<GeminiRepository>(),
      )..startMessagesStream(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Gemini Chat'),
        ),
        body: BlocBuilder<ChatCubit, ChatState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              show: (currentUser, messages) => DashChat(
                currentUser: currentUser,
                onSend: context.read<ChatCubit>().sendMessage,
                messages: messages,
              ),
              error: (failure) => Center(
                child: Text(failure.toString()),
              ),
            );
          },
        ),
      ),
    );
  }
}
