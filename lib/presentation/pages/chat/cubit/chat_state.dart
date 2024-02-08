part of 'chat_cubit.dart';

@freezed
class ChatState with _$ChatState {

  const factory ChatState.initial() = _Initial;

  const factory ChatState.show({
    required ChatUser currentUser,
    required List<ChatMessage> messages,
  }) = _Show;

  const factory ChatState.error({
    required Failure failure,
  }) = _Loading;
}
