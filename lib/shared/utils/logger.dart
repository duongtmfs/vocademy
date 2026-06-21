// Logging utility

class Logger {
  static void log(String message) {
    print('[Vocademy] $message');
  }

  static void error(String message, [Object? error]) {
    print('[Vocademy] ERROR: $message ${error != null ? '- $error' : ''}');
  }

  static void debug(String message) {
    print('[Vocademy] DEBUG: $message');
  }
}
