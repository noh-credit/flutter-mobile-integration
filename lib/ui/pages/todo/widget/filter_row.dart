import 'package:flutter/material.dart';

class FilterRow extends StatelessWidget {
  const FilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: .horizontal,
      child: Row(
        spacing: 8,
        children: [
          _buildFilter('전체', isSelected: true),
          _buildFilter('업무'),
          _buildFilter('개인'),
          _buildFilter('건강'),
        ],
      ),
    );
  }
}

Widget _buildFilter(String text, {bool isSelected = false}) {
  return Container(
    padding: const .symmetric(vertical: 8, horizontal: 16),
    decoration: BoxDecoration(
      color: isSelected ? Colors.deepPurpleAccent : Colors.grey[300],
      borderRadius: const .all(.circular(50)),
    ),
    child: Text(
      text,
      style: TextStyle(
        color: isSelected ? Colors.white : Colors.grey[700],
        fontSize: 14,
        fontWeight: .w700,
      ),
    ),
  );
}