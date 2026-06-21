import 'package:flutter/foundation.dart';
import '../types/learning_types.dart';

class LearningSessionStore extends ChangeNotifier {
  LearningSession? _currentSession;
  int _currentIndex = 0;

  LearningSession? get currentSession => _currentSession;
  int get currentIndex => _currentIndex;

  void setSession(LearningSession session) {
    _currentSession = session;
    notifyListeners();
  }

  void updateIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  void clearSession() {
    _currentSession = null;
    _currentIndex = 0;
    notifyListeners();
  }
}
