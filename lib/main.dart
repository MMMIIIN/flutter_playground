import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_playground/bloc/counter_example/counter_observer.dart';
import 'package:flutter_playground/bloc/post_example/post_app.dart';

void main() {
  Bloc.observer = const CounterObserver();
  runApp(const PostApp());
}
