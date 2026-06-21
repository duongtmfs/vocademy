class ScoringResult {
  final double score;
  final bool isCorrect;
  final String? feedback;
  final DateTime timestamp;

  ScoringResult({
    required this.score,
    required this.isCorrect,
    this.feedback,
    required this.timestamp,
  });
}
