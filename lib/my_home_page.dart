import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_ui/counter_button.dart';
import 'package:test_ui/counter_model.dart';
import 'package:test_ui/counter_text.dart';
import 'package:test_ui/decrement_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CounterModel counterModel;

  _MyHomePageState() : counterModel = CounterModel() {
    counterModel.onIncrement = _updateCounter;
    counterModel.onDecrement = _updateCounter;
  }

  void _updateCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'bấm cái nút đê!\nBạn sợ à?',
            ),
            CounterText(counterModel),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          CounterButton(counterModel),
          const Gap(10),
          DecrementButton(counterModel),
        ],
      ),
    );
  }
}
