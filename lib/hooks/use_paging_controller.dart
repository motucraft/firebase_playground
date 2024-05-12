import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

PagingController<PageKeyType, ItemType>
    usePagingController<PageKeyType, ItemType>({
  required final PageKeyType firstPageKey,
  final int? invisibleItemsThreshold,
  List<Object?>? keys,
  FutureOr<void> Function(PageKeyType pageKey,
          PagingController<PageKeyType, ItemType> pagingController)?
      onPageRequest,
}) {
  final controller = use(
    _PagingControllerHook<PageKeyType, ItemType>(
      keys: keys,
      firstPageKey: firstPageKey,
      invisibleItemsThreshold: invisibleItemsThreshold,
    ),
  );

  useEffect(() {
    listener(PageKeyType pageKey) => onPageRequest?.call(pageKey, controller);
    controller.addPageRequestListener(listener);
    return () => controller.removePageRequestListener(listener);
  }, [onPageRequest]);

  return controller;
}

class _PagingControllerHook<PageKeyType, ItemType>
    extends Hook<PagingController<PageKeyType, ItemType>> {
  const _PagingControllerHook({
    super.keys,
    required this.firstPageKey,
    this.invisibleItemsThreshold,
  });

  final PageKeyType firstPageKey;
  final int? invisibleItemsThreshold;

  @override
  HookState<PagingController<PageKeyType, ItemType>,
          Hook<PagingController<PageKeyType, ItemType>>>
      createState() => _PagingControllerHookState<PageKeyType, ItemType>();
}

class _PagingControllerHookState<PageKeyType, ItemType> extends HookState<
    PagingController<PageKeyType, ItemType>,
    _PagingControllerHook<PageKeyType, ItemType>> {
  late final controller = PagingController<PageKeyType, ItemType>(
      firstPageKey: hook.firstPageKey,
      invisibleItemsThreshold: hook.invisibleItemsThreshold);

  @override
  PagingController<PageKeyType, ItemType> build(_) => controller;

  @override
  void dispose() => controller.dispose();

  @override
  String get debugLabel => 'usePagingController';
}
