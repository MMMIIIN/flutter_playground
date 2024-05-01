import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_playground/bloc/counter_example/app.dart';
import 'package:flutter_playground/bloc/counter_example/counter_observer.dart';

void main() {
  Bloc.observer = const CounterObserver();
  runApp(const CounterApp());
}
