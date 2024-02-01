import 'package:dart_with_bloc/bloc/bloc_counter.dart';
import 'package:dart_with_bloc/bloc/event_counter.dart';

void main(List<String> args) {
  var bloc = CounterBloc();
  bloc.add(CounterIncrementPressed());
}
