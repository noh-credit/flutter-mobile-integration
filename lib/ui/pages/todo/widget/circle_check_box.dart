import 'package:example/enum/process.dart';
import 'package:flutter/material.dart';

class CircleCheckBox extends StatelessWidget {
  final bool value;

  const CircleCheckBox({super.key, this.value = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: value 
        ? Process.done.primaryColor
        : Colors.grey[300],
        shape: BoxShape.circle,
        border: value 
        ? null
        :.all(color: Colors.grey)),
      child: value
        ? Icon(Icons.check, size: 16, color: Colors.white,)
        : null,
      );
  }
}