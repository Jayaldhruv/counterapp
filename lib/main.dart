import 'dart:collection';
import 'package:counterapp/widgets/app_title.dart';
import 'package:counterapp/widgets/history_widget.dart';
import 'package:flutter/material.dart';

import 'counter_app_body.dart';

//Running the app
void main() {
  runApp(
    const EnhancedCounterApp(),
  );
}

//The root widget of the app.
class EnhancedCounterApp extends StatelessWidget {
  //Creates an [EnhancedCounterApp] instance.
  const EnhancedCounterApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterAppBody(),

      //hiding the debug banner
      debugShowCheckedModeBanner: false,
    );
  }
}

// //The state of the counter in the app
// class Counter with ChangeNotifier {
//   int _counter;
//   List<int> _history;
//
//   //Initializes the counter to 0
//   Counter()
//       : _counter = 0,
//         _history = [];
//
// //The current counter state.
//   int get counter => _counter;
//
// //the increases history
//   List<int> get history => UnmodifiableListView<int>(_history);
//
// //Increases the counter by 1
//   void increase() {
//     _counter++;
//     _history.add(_counter);
//     notifyListeners();
//   }
//
// //Decreases the counter by 1.
//   void decrease() {
//     _counter--;
//     notifyListeners();
//   }
// }
//
// class CounterState extends InheritedWidget {
//   //The state of the counter app
//   final Counter model;
//
// //Creates a [CounterState] widget
//   const CounterState({
//     Key? key,
//     required Widget child,
//     required this.model,
//   }) : super(key: key, child: child);
//
//   static CounterState of(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<CounterState>()!;
//   }
//
//   @override
//   bool updateShouldNotify(covariant CounterState oldWidget) {
//     return model.counter != oldWidget.model.counter ||
//         model.history.length != oldWidget.model.history.length;
//   }
// }
