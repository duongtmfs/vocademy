class GameQuestion {
  final String id;
  final String word;
  final String? imageUrl;
  final String? audioUrl;
  final String meaning;

  GameQuestion({
    required this.id,
    required this.word,
    this.imageUrl,
    this.audioUrl,
    required this.meaning,
  });
}

class GameAnswer {
  final String id;
  final String text;
  final bool isCorrect;

  GameAnswer({
    required this.id,
    required this.text,
    required this.isCorrect,
  });
}
