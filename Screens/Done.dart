import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_expert/states.dart';
import 'package:to_do_expert/todocoubit.dart';

class done extends StatelessWidget {
  const done({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ToDocoubit,states>(
      listener: (BuildContext context, Object? state) {  },
      builder: (BuildContext context, state) {
        return Scaffold(
          body: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Done',
                ),
                Text(
                  '${ToDocoubit.get(context).counter}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
