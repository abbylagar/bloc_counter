
import 'dart:developer';

import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
 
  @override
  // TODO: implement props
  List<Object> get props => null;  
}

class IncrementEvent extends CounterEvent{
  @override
  // TODO: implement props
  List<Object> get props =>null;
  
}

class DecrementEvent extends CounterEvent {
  @override
  // TODO: implement props
  List<Object> get props => null;
  
}

class DoubleEvent extends CounterEvent{
  @override
  // TODO: implement props
  List<Object> get props =>null;
  
}