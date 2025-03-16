import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {

  final Widget? child;

  const NeuBox({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.background, borderRadius: BorderRadius.circular(20), boxShadow: [
        BoxShadow(
          color: Theme.of(context).colorScheme.shadow,
          offset: Offset(5, 5),
          blurRadius: 10,
          spreadRadius: 3,
        ),
        BoxShadow(
          color: Theme.of(context).colorScheme.inversePrimary,
          offset: Offset(-5, -5),
          blurRadius: 10,
          spreadRadius: 3,
        ),
      ]),
      padding: const EdgeInsets.all(value),
      child: child,
    );
  }
}