import 'package:flutter/material.dart';

//Running the app
void main() {
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

//contents of the counter app
class CounterAppBody extends StatefulWidget {
  //creates a [counterAppbody] widget.
  const CounterAppBody({Key? key}) : super(key: key);

  @override
  State<CounterAppBody> createState() => _CounterAppBodyState();
}

class _CounterAppBodyState extends State<CounterAppBody> {
  //Keeps track of the counter status when '+1' is pressed
  List<int> increasesHistory = [];

  //The current status of the counter
  int counter = 0;

  //increases the counter by 1
  void increase() {
    setState(() {
      counter++;
      increasesHistory = List<int>.from(increasesHistory)
        ..add(counter);
    });
  }

  //Decreases the counter by 1.
  void decrease() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const AppTitle(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: decrease,
                  child: const Text('-'),
                ),
                Text('$counter'),
                ElevatedButton(
                  onPressed: increase,
                  child: const Text('+'),
                ),
              ],
            ),
            //The counter widget
            HistoryWidget(increasesHistory: increasesHistory,),
          ],
        ),
      ),
    );
  }
}

//This widget contains the title of the app
class AppTitle extends StatelessWidget {
  //Creates an Apptitle widget
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Icon(
          Icons.remove,
          color: Colors.redAccent,
        ),
        Text('Enhanced Counter app!'),
        Icon(
          Icons.add,
          color: Colors.lightGreen,
        ),
      ],
    );
  }
}

//Keeps track of the counter values whenever it is increased
class HistoryWidget extends StatefulWidget {
  //the counters history.
  final List<int>increasesHistory;

  //Creates an [HistoryWidget] from the given [increasesHistory]

  const HistoryWidget({Key? key, required this.increasesHistory})
      : super(key: key);

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //The title
        const Text('Increases counter'),
        //The actual list
        Flexible(child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 15,
          ),
          child: SizedBox(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Text(
                    '${widget.increasesHistory[index]}',
                );
              },
              separatorBuilder: (_, __) {
                return const SizedBox(width: 10);
              },
              itemCount: widget.increasesHistory.length,),
          ),
        ),),
      ],
    );
  }
}

