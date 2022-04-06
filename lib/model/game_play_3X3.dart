import 'package:flutter/material.dart';

class GamePlayer3X3 {
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
      Colors.blue
    ];
    checkOX = 0;
    bord = ['', '', '', '', '', '', '', '', ''];
  }

  int checkOX = 0;

  late String palyer = "";
  late List<String> bord = ['', '', '', '', '', '', '', '', ''];
  late List<Color> colorplayer = [
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue
  ];
  List<Set<int>> conditonWiner = [
    {0, 1, 2},
    {3, 4, 5},
    {6, 7, 8},
    {0, 3, 6},
    {1, 4, 7},
    {2, 5, 8},
    {0, 4, 8},
    {2, 4, 6}
  ];

  bool chekWiner() {
    conditonWiner[0];
    for (int i = 0; i < conditonWiner.length; i++) {
      List<int> setCheck = conditonWiner[i].toList();
      if (bord![setCheck[0]] == bord![setCheck[1]] &&
          bord![setCheck[0]] == bord![setCheck[2]] &&
          bord![setCheck[0]] != '') {
        return true;
      }
    }
    

    return false;
  }
}
