import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const appImageCacheKey = 'appImageCache';

/// General image cache (you can use it for rewards + other images)
final imageCacheManagerProvider = Provider<CacheManager>((ref) {
  return CacheManager(
    Config(
      appImageCacheKey,
      stalePeriod: Duration(days: 7),
      maxNrOfCacheObjects: 200,
    ),
  );
});
