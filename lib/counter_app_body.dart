import 'package:counterapp/model/counter.dart';
import 'package:counterapp/widgets/app_title.dart';
import 'package:counterapp/widgets/counter_buttons.dart';
import 'package:counterapp/widgets/counter_inherited_widget.dart';
import 'package:counterapp/widgets/history_widget.dart';
import 'package:flutter/material.dart';

///contents of the counter app
class CounterAppBody extends StatelessWidget {
  ///Creates a [CounterAppBody] widget.
  const CounterAppBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CounterState(
      model: Counter(),
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              //The top title
              AppTitle(),

              //The counter buttons
              CounterButtons(),

              //The history
              HistoryWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
