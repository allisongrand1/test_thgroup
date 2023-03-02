import 'package:flutter/material.dart';
import 'package:test_thgroup/module_data/repository/repository.dart';
import 'package:test_thgroup/my_app.dart';

void main() {
  final repository = Repository();
  repository.setup();
  runApp(const MyApp());
}
