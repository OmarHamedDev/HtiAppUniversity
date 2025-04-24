import 'package:hti_univerity/core/caching/cache_keys.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/caching/secure_storge/caching_Data.dart';
import 'auth_offline_data_source.dart';

@Injectable(as: AuthOfflineDataSource)
class AuthOfflineDataSourceImpl implements AuthOfflineDataSource {
  final CachingDataSecureStorage _cachingDataSecureStorage;
  const AuthOfflineDataSourceImpl(this._cachingDataSecureStorage);
  @override
  Future<void> saveToken({required String? token}) async {
    if (token != null) {
      await _cachingDataSecureStorage.writeData(
          key: CacheKeys.token, value: token);
    } else {
      throw Exception("Token Is Empty");
    }
  }

  @override
  Future<void> deleteToken() async {
    await _cachingDataSecureStorage.deleteData(key: CacheKeys.token);
  }

  @override
  Future<String> getToken() async {
    try {
      String? token =
          await _cachingDataSecureStorage.readData(key: CacheKeys.token);
      if (token != null) {
        return token;
      } else {
        throw Exception("Token Is Empty");
      }
    } catch (e) {
      throw Exception("Token Is Empty");
    }
  }

  @override
  Future<String> getRole() async {
    {
      try {
        String? role =
            await _cachingDataSecureStorage.readData(key: CacheKeys.role);
        if (role != null) {
          return role;
        } else {
          throw Exception("Role Is Empty");
        }
      } catch (e) {
        throw Exception("Role Is Empty");
      }
    }
  }

  @override
  Future<void> saveRole({required String? role}) async {
    if (role != null) {
      await _cachingDataSecureStorage.writeData(
          key: CacheKeys.role, value: role);
    } else {
      throw Exception("Role Is Empty");
    }
  }
}
