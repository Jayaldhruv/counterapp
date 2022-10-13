//This widget contains the title of the app
import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  //Creates an [Apptitle] widget
  const AppTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        //the icon
        Icon(
          Icons.remove,
          color: Colors.redAccent,
        ),

        //The app title
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Text(
            'Enhanced Counter app!',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),

        //The icon
        Icon(
          Icons.add,
          color: Colors.lightGreen,
        ),
      ],
    );
  }
}
