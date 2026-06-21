enum GameType {
  listenChoose,
  chooseAnswer,
  speak,
  arrangeWords,
}

class LearningSession {
  final String id;
  final String lessonId;
  final List<GameType> gameTypes;
  final int currentIndex;
  final DateTime createdAt;

  LearningSession({
    required this.id,
    required this.lessonId,
    required this.gameTypes,
    required this.currentIndex,
    required this.createdAt,
  });
}
