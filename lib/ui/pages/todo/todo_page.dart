import 'package:example/ui/pages/todo/widget/bottom_navigation.dart';
import 'package:example/ui/pages/todo/widget/filter_row.dart';
import 'package:example/ui/pages/todo/widget/header.dart';
import 'package:example/ui/pages/todo/widget/progress_card.dart';
import 'package:example/ui/pages/todo/widget/todo_list.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: .all(24.0),
          child: Column(
            spacing: 24,
            crossAxisAlignment: .stretch,
            children: [
              // 타이틀 / 상단
              const Header(),
              const ProgressCard(),
              const FilterRow(),
              _buildtodoTitle(),
              const TodoList(),
              const BottomNavigation()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildtodoTitle() {
    return Text(
      '오늘 할 일',
      style: TextStyle(
        fontSize: 18,
        fontWeight: .bold,
      ),
    );
  }
}

