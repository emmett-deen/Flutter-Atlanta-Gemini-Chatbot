import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:fatl_gemini_chatbot/domain/models/failure.dart';
import 'package:fatl_gemini_chatbot/domain/models/gemini_message.dart';

class GeminiRepository {
  GeminiRepository({required this.firestore});

  final FirebaseFirestore firestore;

  Future<Either<Failure, void>> sendMessage(String message) async {
    try {
      await firestore.collection('messages').add({
        'prompt': message,
      });
      return const Right(null);
    } catch (e) {
      return const Left(
        Failure('There was an error sending the message. Please try again.'),
      );
    }
  }

  Stream<Either<Failure, List<GeminiMessage>>> streamMessages() {
    return firestore
        .collection('messages')
        .snapshots()
        .asyncMap(
          (event) => Right<Failure, List<GeminiMessage>>(
            event.docs.map((e) => GeminiMessage.fromJson(e.data())).toList(),
          ),
        )
        .handleError(
          (e) => const Left<Failure, List<GeminiMessage>>(
            Failure(
              'There was an error getting the messages. Please try again.',
            ),
          ),
        );
  }
}
