import 'package:equatable/equatable.dart';

class MyMessageState extends Equatable {
  final String message;

  const MyMessageState({
    required this.message,
  });

  factory MyMessageState.initial() {
    return const MyMessageState(message: '');
  }

  @override
  List<Object> get props => [message];

  @override
  String toString() => 'MyMessageState(message: $message)';

  MyMessageState copyWith({
    String? message,
  }) {
    return MyMessageState(
      message: message ?? this.message,
    );
  }
}
