import 'package:flutter/material.dart';

class GamePlayer4X4 {
  GamePlayer() {
    colorplayer = [
      Colors.blue,
      Colors.blue,
      Colors.blue,
      Colors.blue,
      Colors.blue,
      Colors.blue,
      Colors.blue,
      Colors.blue,
      Colors.blue,
      Colors.blue,
      Colors.blue,
      Colors.blue,
      Colors.blue,
      Colors.blue,
      Colors.blue,
      Colors.blue,
    ];
    checkOX = 0;
    bord = [
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
    ];
  }

  int checkOX = 0;

  late String palyer = "";
  late List<String> bord = bord = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];
  List<Color> colorplayer = [
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
  ];
  List<Set<int>> conditonWiner = [
    {0, 1, 2, 3},
    {4, 5, 6, 7},
    {8, 9, 10, 11},
    {12, 13, 14, 15},
    {0, 4, 8, 12},
    {1, 5, 9, 13},
    {2, 6, 10, 14},
    {3, 7, 11, 15},
    {0, 5, 10, 15},
    {3, 6, 9, 12}
  ];

  bool chekWiner() {
    conditonWiner[0];
    for (int i = 0; i < conditonWiner.length; i++) {
      List<int> setCheck = conditonWiner[i].toList();
      if (bord![setCheck[0]] == bord![setCheck[1]] &&
          bord![setCheck[0]] == bord![setCheck[2]] &&
          bord![setCheck[0]] == bord![setCheck[3]] &&
          bord![setCheck[0]] != '') {
        return true;
      }
    }

    return false;
  }
}
