import 'package:flutter/material.dart';
import 'package:test_ui/counter_model.dart';

class DecrementButton extends StatelessWidget {
  final CounterModel counterModel;

  const DecrementButton(this.counterModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: counterModel.decrement,
      tooltip: 'Decrement',
      child: const Icon(Icons.remove),
    );
  }
}
