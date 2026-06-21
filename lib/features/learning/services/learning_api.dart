import '../types/learning_types.dart';

abstract class LearningApi {
  Future<LearningSession> startSession(String lessonId);
  Future<void> updateProgress(String sessionId, int currentIndex);
  Future<void> endSession(String sessionId);
}

class LearningApiImpl implements LearningApi {
  @override
  Future<LearningSession> startSession(String lessonId) async {
    // TODO: Implement API call
    throw UnimplementedError();
  }

  @override
  Future<void> updateProgress(String sessionId, int currentIndex) async {
    // TODO: Implement API call
    throw UnimplementedError();
  }

  @override
  Future<void> endSession(String sessionId) async {
    // TODO: Implement API call
    throw UnimplementedError();
  }
}
