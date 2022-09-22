import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'failure.dart';

abstract class InfiniteScrollController<Type> {
  late PagingController<int, Type> pagingController;

  int get pageSize;

  /// Check if [pagingController] already disposed.
  var _isDispose = false;

  @protected
  Future<void> fetchPage(int pageIndex);

  void init() {
    pagingController = PagingController(firstPageKey: 0);
    pagingController.addPageRequestListener((pageIndex) {
      fetchPage(pageIndex);
    });
    _isDispose = false;
  }

  void dis() {
    pagingController.dispose();
    _isDispose = true;
  }

  @protected
  void appendEitherListResult({
    required Either<Failure, List<Type>> resultNewItems,
    required int pageIndex,
  }) {
    if (_isDispose) {
      return;
    }

    resultNewItems.fold(
      (failure) {
        pagingController.error = failure.message;
      },
      (newItems) {
        appendItemsToPagingController(
          newItems: newItems,
          pageIndex: pageIndex,
        );
      },
    );
  }

  @protected
  void appendItemsToPagingController({
    required List<Type> newItems,
    required int pageIndex,
  }) {
    if (_isDispose) {
      return;
    }

    final isLastPage = newItems.length < pageSize;
    if (isLastPage) {
      pagingController.appendLastPage(newItems);
    } else {
      final nextPageKey = pageIndex + newItems.length;
      pagingController.appendPage(newItems, nextPageKey);
    }
  }

  /// Because `pagingController` use index (0, 1, 2)
  /// instead of page number (page 0 get 10 items, etc),
  /// we will divide them with "~/" (divide then convert
  /// to int).
  @protected
  int getPageNo(int pageIndex) {
    return pageIndex ~/ pageSize;
  }
}
