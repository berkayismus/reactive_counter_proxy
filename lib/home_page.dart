import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reactive_counter_proxy/counter.dart';

import 'counter_controller.dart';
import 'message.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<CounterController>().increment();
          },
          child: const Icon(Icons.add),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Counter(),
              Message(),
            ],
          ),
        ),
      ),
    );
  }
}
