import 'package:example/enum/process.dart';
import 'package:example/ui/pages/todo/widget/circle_check_box.dart';
import 'package:example/ui/pages/todo/widget/process_badge.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // 날짜 포맷을 위한 패키지


class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    final dummy = [
      (
        title: "운동하기",
        filter: "건강",
        time: DateTime.now(),
        process: Process.done,
      ),
      (
        title: "공부하기",
        filter: "학습",
        time: DateTime.now(),
        process: Process.doing,
      ),
      (
        title: "청소하기",
        filter: "집안일",
        time: DateTime.now(),
        process: Process.todo,
      ),
      (
        title: "요리하기",
        filter: "취미",
        time: DateTime.now(),
        process: Process.todo,
      ),
    ];
    return ListView.separated(
      itemCount: dummy.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => SizedBox(height: 12),
      itemBuilder: (context, index) {
        final data = dummy[index];

        return Container(
          padding: .symmetric(vertical: 18, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.grey[200]!,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            spacing: 12,
            children: [
              // 체크박스
              CircleCheckBox(value: data.process == .done,
              ),
              
              // 할 일 텍스트
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.title,
                      style: TextStyle(fontSize: 16, fontWeight: .w600),
                    ),
                    Text(
                      '${data.filter} · ${DateFormat('HH:mm').format(data.time)}',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),

              // 진행 뱃지
              ProcessBadge(process: data.process),
            ],
          ),
        );
      },
    );
  }
}