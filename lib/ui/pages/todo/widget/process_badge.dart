import 'package:example/enum/process.dart';
import 'package:flutter/material.dart';

class ProcessBadge extends StatelessWidget {
  final Process process;

  const ProcessBadge({
    super.key,
    required this.process
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        color: process.secondaryColor,
        borderRadius: .circular(50)),
      child: Text(
        process.title,
        style: TextStyle(
          fontSize: 11,
          color: process.primaryColor,
        )
      ),
    );
  }
}