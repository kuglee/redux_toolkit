import 'package:meta/meta.dart';
import 'package:redux_toolkit/redux_toolkit.dart';

import '../fakes/test_state.dart';

abstract class Action<T> {
  final T payload;

  const Action({
    @required this.payload,
  });
}

abstract class ErrorAction<T extends Exception> {
  final T error;

  const ErrorAction({
    @required this.error,
  });
}

class RequestItemsAction {}

class FetchItemsSuccessfulAction extends Action<List<Item>> {
  const FetchItemsSuccessfulAction({List<Item> payload})
      : super(payload: payload);
}

class FetchItemsErrorAction extends ErrorAction<Exception> {
  const FetchItemsErrorAction({error}) : super(error: error);
}

class SomeUnhandledAction {}

class TestPayloadAction extends PayloadAction {
  const TestPayloadAction({dynamic payload, dynamic meta, dynamic error})
      : super(payload: payload, meta: meta, error: error);
}

enum CounterActions {
  Increment,
  Decrement,
}
