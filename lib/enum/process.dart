import 'package:flutter/material.dart';

enum Process {todo, doing, done}

extension ProcessExtension on Process {
  Color get primaryColor => switch (this) {
    .todo => Color(0xFFF427B6),
    .doing => Color(0xFF14B8A6),
    .done => Color(0xFF8B5cf6),
  };

  Color get secondaryColor => switch (this) {
    .done => Color(0x208b5cf6),
    .doing => Color(0x2014B8A6),
    .todo => Color(0x20F472B6),
  };

  String get title => switch (this) {
    .done => '완료',
    .doing => '진행 중',
    .todo => '예정',
  };

// 람다 형식
  // Color get secondaryColor => this == .done
  //           ? Color(0x208b5cf6)
  //           : this == .doing
  //           ? Color(0x2014B8A6)
  //           : Color(0x20F472B6);


// if 형식
    // if (this == .done) {
    //   return Color(0x208b5cf6);
    // } else if (this == .doing) {
    //   return Color(0x2014B8A6);
    // }

    // return Color(0x20F472B6);
  }
