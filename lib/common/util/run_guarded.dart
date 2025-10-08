import 'package:walaa_pos/common/exception/failure.dart';

Future<T?> runGuarded<T>(
  Future<T> Function() action,
  void Function(String message) onError,
) async {
  try {
    return await action();
  } on Failure catch (f) {
    onError(f.message);
  } catch (_) {
    onError("حدث خطأ غير متوقع. حاول مرة أخرى.");
  }
  return null;
}
