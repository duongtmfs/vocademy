import '../types/scoring_types.dart';

abstract class SpeechApi {
  Future<String> recognizeSpeech();
  Future<ScoringResult> scoreSpeech(String userAudio, String referenceAudio);
}

class SpeechApiImpl implements SpeechApi {
  @override
  Future<String> recognizeSpeech() async {
    // TODO: Implement speech recognition
    throw UnimplementedError();
  }

  @override
  Future<ScoringResult> scoreSpeech(String userAudio, String referenceAudio) async {
    // TODO: Implement speech scoring
    throw UnimplementedError();
  }
}
