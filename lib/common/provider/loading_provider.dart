import 'package:riverpod_annotation/riverpod_annotation.dart';

final loadingProvider =
    AutoDisposeNotifierProvider<_LoadingNotifier, bool>(_LoadingNotifier.new);

class _LoadingNotifier<T> extends AutoDisposeNotifier<bool> {
  @override
  build() => false;

  Future<T> wrap(Future<T> future) async {
    try {
      present();
      return await future;
    } finally {
      dismiss();
    }
  }

  void present() => state = true;

  void dismiss() => state = false;
}
