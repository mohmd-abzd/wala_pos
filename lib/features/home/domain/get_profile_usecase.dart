import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wala_pos/core/data/auth/dto/response/login_response.dart';
import 'package:wala_pos/core/data/auth/source/local/iprofile_storage.dart';
import 'package:wala_pos/core/data/auth/source/local/profile_storage.dart';

class GetProfileUseCase {
  final IProfileStorage _storage;
  GetProfileUseCase(this._storage);

  Future<Profile?> execute() async {
    final jsonString = await _storage.readProfile();
    if (jsonString == null) return null;
    try {
      return Profile.fromJson(jsonDecode(jsonString));
    } catch (_) {
      return null;
    }
  }
}

final getProfileUseCaseProvider = Provider.autoDispose<GetProfileUseCase>((
  ref,
) {
  final storage = ref.watch(profileStorageProvider);
  return GetProfileUseCase(storage);
});
