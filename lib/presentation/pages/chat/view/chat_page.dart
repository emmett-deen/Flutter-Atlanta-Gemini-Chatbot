import 'package:flutter/material.dart';

/// [ChatPage] is a stateless widget that displays a simple text 'ChatPage'.
class ChatPage extends StatelessWidget {
  /// Creates an instance of [ChatPage].
  const ChatPage({super.key});

  /// Builds the widget tree for [ChatPage].
  ///
  /// Returns a [Scaffold] with a [Text] widget displaying 'ChatPage'.
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Text('ChatPage'));
  }
}
