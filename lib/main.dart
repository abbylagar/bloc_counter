import 'package:bloc_counter/blocs/counterbloc.dart';
import 'package:bloc_counter/blocs/counterevent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bloc Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:BlocProvider(create: (context)=>CounterBloc(),child:
       MyHomePage(title: 'Flutter Bloc Demo'),
    ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   

  @override
  Widget build(BuildContext context) {
   CounterBloc counterbloc = BlocProvider.of<CounterBloc>(context);
    return 
      Scaffold(
        appBar: AppBar(
        title: Text(widget.title),),
      body: 
          BlocBuilder<CounterBloc,int>(builder:(BuildContext context, count) {
            return
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'You have pushed the button this many times:',
                    ),
                    Text("$count",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                    FloatingActionButton(
                    onPressed:()=>counterbloc.add(IncrementEvent()),
                    child: Icon(Icons.add),
                    tooltip: "Increment",
                  ),
 
                  SizedBox(height: 20),

                  FloatingActionButton(
                    onPressed:()async{
                      counterbloc.add(DecrementEvent());} ,
                      tooltip: 'Decrement',
                      child: Icon(Icons.exposure_minus_1)) ,

                  SizedBox(height: 20),

                  FloatingActionButton(
                    onPressed:()async{
                      counterbloc.add(DoubleEvent());} ,
                      tooltip: 'Double',
                      child: Icon(Icons.double_arrow))
              

                    ]));
        }
      ));
  }        
}