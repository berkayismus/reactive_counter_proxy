import 'package:reactive_counter_proxy/counter_controller.dart';

import 'my_message_state.dart';

class MyMessage {
  final CounterController counterController;

  MyMessage({
    required this.counterController,
  });

  MyMessageState get state => MyMessageState(
        message: calculateMessage(),
      );

  String calculateMessage() {
    if (counterController.state.counter % 2 == 0) {
      return 'Hello';
    }
    return 'Merhaba';
  }
}
