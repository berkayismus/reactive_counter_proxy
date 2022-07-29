import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reactive_counter_proxy/counter_controller.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterState = context.watch<CounterController>().state;
    return Text(
      '${counterState.counter}',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
