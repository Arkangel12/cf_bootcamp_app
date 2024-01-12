import 'package:cf_bootcamp_app/src/app_entry.dart';
import 'package:flutter/material.dart';

class EasyCodeApp extends StatelessWidget {
  const EasyCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppEntry(title: 'Codigo Facilito'),
    );
  }
}