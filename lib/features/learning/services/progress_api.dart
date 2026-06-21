abstract class ProgressApi {
  Future<Map<String, dynamic>> getUserProgress(String userId);
  Future<void> saveProgress(String userId, Map<String, dynamic> progress);
}

class ProgressApiImpl implements ProgressApi {
  @override
  Future<Map<String, dynamic>> getUserProgress(String userId) async {
    // TODO: Implement API call
    throw UnimplementedError();
  }

  @override
  Future<void> saveProgress(String userId, Map<String, dynamic> progress) async {
    // TODO: Implement API call
    throw UnimplementedError();
  }
}
