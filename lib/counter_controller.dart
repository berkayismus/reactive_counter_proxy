import 'package:flutter/foundation.dart';
import 'package:reactive_counter_proxy/counter_state.dart';

class CounterController with ChangeNotifier {
  // ignore: prefer_final_fields
  CounterState _state = CounterState.initial();

  CounterState get state => _state;

  void increment() {
    _state = _state.copyWith(
      counter: state.counter + 1,
    );
    notifyListeners();
  }
}
