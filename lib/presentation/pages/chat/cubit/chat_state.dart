part of 'chat_cubit.dart';

/// A class that represents the state of the chat.
@freezed
class ChatState with _$ChatState {

  /// Creates an initial state of the chat.
  const factory ChatState.initial() = _Initial;

  /// Creates a state that shows the current user and the messages.
  ///
  /// The [currentUser] and [messages] parameters are required.
  const factory ChatState.show({
    required ChatUser currentUser,
    required List<ChatMessage> messages,
  }) = _Show;

  /// Creates a state that represents an error.
  ///
  /// The [failure] parameter is required.
  const factory ChatState.error({
    required Failure failure,
  }) = _Loading;
}
