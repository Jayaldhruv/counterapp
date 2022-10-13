import 'package:flutter/material.dart';

//Running the app
void main(){
  runApp(
    const EnhancedCounterApp(),
  );
}

//The root widget of the app.
class EnhancedCounterApp extends StatelessWidget {
  //Creates an [EnhancedCounterApp] instance.
  const EnhancedCounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterAppBody(),
      debugShowCheckedModeBanner: false,
    );
  }
}
