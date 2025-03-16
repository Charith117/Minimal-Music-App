import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {

  final Widget? child;

  const NeuBox({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.background, borderRadius: BorderRadius.circular(20), boxShadow: [
        BoxShadow(
          color: Colors.grey.shade500,
          blurRadius: 15,
          offset: Offset(4, 4),
          spreadRadius: 2,
        ),
        BoxShadow(
          color: Colors.white,
          offset: Offset(-4, -4),
          blurRadius: 10,
          spreadRadius: 2,
        ),
      ]),
      padding: const EdgeInsets.all(12),
      child: child,
    );
  }
}