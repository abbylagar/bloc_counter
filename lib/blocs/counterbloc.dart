import 'package:bloc/bloc.dart';
import 'package:bloc_counter/blocs/counterevent.dart';
class CounterBloc extends Bloc<CounterEvent,int>{

  CounterBloc() : super(0);
  @override
  int get initialState =>0;
  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
     
      try {
          if (event is IncrementEvent){
          yield state + 1;
          }

          else if (event is DecrementEvent){
            yield state - 1;
            
          }

          else if (event is DoubleEvent){
            yield state*2;
          }
      } 
      catch (e) {
        print(e.toString());
      }
  }


}
