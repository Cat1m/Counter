import 'package:flutter/material.dart';
import 'package:test_ui/counter_model.dart';

class CounterButton extends StatelessWidget {
  final Incrementable incrementable;

  const CounterButton(this.incrementable, {super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: incrementable.increment,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
