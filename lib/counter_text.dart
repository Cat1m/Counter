import 'package:flutter/material.dart';
import 'package:test_ui/counter_model.dart';

class CounterText extends StatelessWidget {
  final Displayable displayable;

  const CounterText(this.displayable, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      displayable.getValue().toString(),
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
