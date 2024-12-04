import 'package:get/get.dart';

enum PageState { initial, loading, loaded, error, empty, paging }


extension PageStateExtension on PageState {
  bool isInitial() => this == PageState.initial;

  bool isLoading() => this == PageState.loading;

  bool isLoaded() => this == PageState.loaded;

  bool isError() => this == PageState.error;

  bool isPaging() => this == PageState.paging;

  bool isEmpty() => this == PageState.empty;
}

extension RxPageStateExtension on Rx<PageState> {
  bool isLoading() => value == PageState.loading;

  bool isLoaded() => value == PageState.loaded;

  bool isInitial() => value == PageState.initial;

  bool isError() => value == PageState.error;

  bool isPaging() => value == PageState.paging;

  bool isEmpty() => value == PageState.empty;

  PageState initial() => this(PageState.initial);

  PageState loading() => this(PageState.loading);

  PageState loaded() => this(PageState.loaded);

  PageState error() => this(PageState.error);

  PageState paging() => this(PageState.paging);

  PageState emptying() => this(PageState.empty);
}
