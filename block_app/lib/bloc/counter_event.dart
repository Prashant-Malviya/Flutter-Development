part of 'counter_bloc.dart';

sealed class CounterEvent {}

final class CounterIncreamented extends CounterEvent {}

final class CounterDecremented extends CounterEvent {}
