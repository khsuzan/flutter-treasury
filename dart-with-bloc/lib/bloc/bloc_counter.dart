import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dart_with_bloc/bloc/event_counter.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>(_increment);
    on<CounterDecrementPressed>(_decrement);
  }

  FutureOr<void> _decrement(CounterDecrementPressed event, Emitter<int> emit) {
    print("Decrement");
    emit(state - 1);
  }

  FutureOr<void> _increment(CounterIncrementPressed event, Emitter<int> emit) {
    print("Increment");
    emit(state + 1);
  }

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }

  @override
  void onTransition(Transition<CounterEvent, int> transition) {
    super.onTransition(transition);
    print(transition);
  }
}
