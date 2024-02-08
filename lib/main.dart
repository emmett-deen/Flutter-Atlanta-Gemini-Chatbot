import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fatl_gemini_chatbot/bootstrap.dart';
import 'package:fatl_gemini_chatbot/domain/repositories/gemini_repository.dart';
import 'package:fatl_gemini_chatbot/firebase_options.dart';
import 'package:fatl_gemini_chatbot/presentation/app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final firestore = FirebaseFirestore.instance;

  await bootstrap(
    () => App(
      geminiRepository: GeminiRepository(firestore: firestore),
    ),
  );
}
