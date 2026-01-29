import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wala_pos/core/data/auth/dto/response/login_response.dart';
import 'iprofile_storage.dart';

final profileStorageProvider = Provider.autoDispose<IProfileStorage>((ref) {
  return ProfileStorage();
});

final class ProfileStorage implements IProfileStorage {
  static const _profileKey = 'user_profile_json';

  @override
  Future<void> saveProfile(Profile profile) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_profileKey, jsonEncode(profile));
  }

  @override
  Future<String?> readProfile() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_profileKey);
  }

  @override
  Future<void> clearProfile() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_profileKey);
  }
}
