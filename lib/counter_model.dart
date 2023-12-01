import 'package:flutter/material.dart';

abstract class Incrementable {
  void increment();
}

abstract class Displayable {
  int getValue();
}

class CounterModel implements Incrementable, Displayable {
  int _count = 0;
  VoidCallback? onIncrement; // Thêm một hàm callback
  VoidCallback? onDecrement;

  CounterModel({this.onIncrement, this.onDecrement});

  @override
  void increment() {
    _count++;
    onIncrement?.call(); // Gọi callback khi increment
  }

  void decrement() {
    if (_count > 0) _count--;
    onDecrement?.call();
  }

  @override
  int getValue() {
    return _count;
  }
}
