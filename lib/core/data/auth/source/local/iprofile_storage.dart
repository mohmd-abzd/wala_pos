// lib/core/data/local/profile_storage/iprofile_storage.dart
import 'package:walaa_pos/core/data/auth/dto/response/login_response.dart';

abstract interface class IProfileStorage {
  Future<void> saveProfile(Profile profileJson);
  Future<String?> readProfile();
  Future<void> clearProfile();
}
