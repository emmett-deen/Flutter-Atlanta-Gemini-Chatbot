import 'package:fatl_gemini_chatbot/presentation/pages/chat/view/chat_page.dart';
import 'package:flutter/material.dart';

/// [App] is a stateless widget that serves as the root of the application.
/// It returns a [MaterialApp] with [ChatPage] as its home.
class App extends StatelessWidget {
  /// Creates an instance of [App].
  const App({super.key});

  /// Builds the widget tree for [App].
  ///
  /// Returns a [MaterialApp] with [ChatPage] as its home.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ChatPage(),
    );
  }
}
