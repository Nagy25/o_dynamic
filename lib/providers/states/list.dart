class ListState<T> {
  final List<T> data;

  ListState({this.data = const []});
}

class InitialListState<T> extends ListState<T> {
  InitialListState();
}

class LoadingListState<T> extends ListState<T> {
  LoadingListState();
}

class LoadedListState<T> extends ListState<T> {
  LoadedListState({required super.data});
}

class ErrorListState<T> extends ListState<T> {
  ErrorListState();
}
