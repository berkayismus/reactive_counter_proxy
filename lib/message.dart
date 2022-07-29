import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_message.dart';

class Message extends StatelessWidget {
  const Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myMessage = context.watch<MyMessage>();

    return Text(
      myMessage.state.message,
      style: Theme.of(context).textTheme.headline5,
    );
  }
}
