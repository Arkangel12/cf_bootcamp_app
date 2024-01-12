import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({
    super.key,
    required this.color,
    required this.value,
  });

  final Color color;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        // borderRadius: const BorderRadius.all(Radius.circular(20)),
        // borderRadius: const BorderRadius.only(
        //   topLeft: Radius.circular(50),
        //   bottomRight: Radius.circular(50),
        // ),
      ),
      child: Text(
        '$value',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
