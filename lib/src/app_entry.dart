import 'package:cf_bootcamp_app/src/widgets/my_container.dart';
import 'package:flutter/material.dart';

class AppEntry extends StatefulWidget {
  const AppEntry({super.key, required this.title});

  final String title;

  @override
  State<AppEntry> createState() => _AppEntryState();
}

class _AppEntryState extends State<AppEntry> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
          // child: Column(
            children: [
              Expanded(
                flex: 1200,
                child: MyContainer(
                  color: Colors.green,
                  value: _counter,
                ),
              ),
              // const SizedBox(height: 5),
              const SizedBox(width: 5),
              Expanded(
                flex: 4500,
                child: MyContainer(
                  color: Colors.red,
                  value: _counter,
                ),
              ),

              // MyContainer(
              //   color: Colors.grey,
              //   value: _counter,
              // ),
              // const Spacer(),
              // Expanded(
              //   flex: 3,
              //   child: MyContainer(
              //     color: Colors.blue,
              //     value: _counter,
              //   ),
              // ),
              // const Spacer(flex: 3,),
              // MyContainer(
              //   color: Colors.green,
              //   value: _counter,
              // ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
