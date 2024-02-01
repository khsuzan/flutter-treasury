import 'package:bloc/bloc.dart';
import 'package:dart_with_bloc/cubit/counter_cubit.dart';
import 'package:dart_with_bloc/cubit/simple_bloc_observer.dart';

void main(List<String> arguments) {
  // universal listener on change cubits
  Bloc.observer = SimpleBlocObserver();

  // an simple example of use cubit in bloc
  var cCubit = CounterCubit(0);
  cCubit.stream.listen(_cubitCounterListener);
  assert(cCubit.state == 0);
  cCubit.increment();
  assert(cCubit.state == 1);
  assert(!cCubit.isClosed);
  cCubit.close();
  assert(cCubit.isClosed);
}

void _cubitCounterListener(int count) {
  print(count);
}
