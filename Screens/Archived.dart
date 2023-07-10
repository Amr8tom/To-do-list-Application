import 'package:flutter/material.dart';

import '../todocoubit.dart';

class archived extends StatelessWidget {
  const archived({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Archived',
            ),
            Text(
              '${ToDocoubit.get(context).counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
