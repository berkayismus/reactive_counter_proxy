import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reactive_counter_proxy/counter_controller.dart';
import 'package:reactive_counter_proxy/home_page.dart';
import 'package:reactive_counter_proxy/my_message.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterController()),
        ProxyProvider<CounterController, MyMessage>(
          update: (context, counterController, _) {
            return MyMessage(counterController: counterController);
          },
        ),
      ],
      child: const MaterialApp(
        title: 'Material App',
        home: HomePage(),
      ),
    );
  }
}
