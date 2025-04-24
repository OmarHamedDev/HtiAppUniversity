abstract class AuthOfflineDataSource {
  Future<void> saveToken({required String? token});
  Future<void> saveRole({required String? role});
  Future<String> getRole();
  Future<void> deleteToken();
  Future<String> getToken();
}