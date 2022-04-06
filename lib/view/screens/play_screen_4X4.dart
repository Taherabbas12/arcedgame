import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/game_play_4X4.dart';

class PlayScreen4X4 extends StatefulWidget {
  PlayScreen4X4({Key? key}) : super(key: key);

  @override
  State<PlayScreen4X4> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<PlayScreen4X4> {
  GamePlayer4X4? gamePlayer;
  String theWiner = '';
  String theTrueis = 'X';
  int checkEndPlay = 0;

  @override
  void initState() {
    super.initState();
    checkEndPlay = 0;
    gamePlayer = GamePlayer4X4();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Tic-tac-toe 4X4',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 2, 10, 27),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('ITS` $theTrueis TRUE',
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.06)),
                  ],
                ),
              )),
          Expanded(
              flex: 10,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color.fromARGB(109, 255, 255, 255),
                        width: 2,
                      )),
                  child: Wrap(
                      children: List.generate(
                          16,
                          (index) => InkWell(
                                onTap: () {
                                  if (gamePlayer!.bord![index] == '' &&
                                      gamePlayer!.chekWiner() == false)
                                    setState(() {
                                      checkEndPlay++;
                                      gamePlayer!.bord[index] =
                                          gamePlayer!.checkOX == 0 ? 'X' : 'O';
                                      gamePlayer!.checkOX =
                                          gamePlayer!.checkOX == 1 ? 0 : 1;
                                      gamePlayer!.colorplayer![index] =
                                          gamePlayer!.checkOX == 1
                                              ? Colors.blue
                                              : Colors.red;
                                      theTrueis =
                                          gamePlayer!.checkOX == 0 ? 'X' : 'O';
                                      if (gamePlayer!.chekWiner()) {
                                        theWiner = gamePlayer!.checkOX == 1
                                            ? 'X is the winner'
                                            : 'O is the winner';
                                      } else if (checkEndPlay == 16) {
                                        theWiner = 'it`s a Draw';
                                      } else
                                        theWiner = '';
                                    });
                                },
                                highlightColor:
                                    Color.fromARGB(255, 34, 150, 165),
                                borderRadius: BorderRadius.circular(14),
                                child: Container(
                                  margin: EdgeInsets.all(3),
                                  width:
                                      MediaQuery.of(context).size.width * 0.23,
                                  height:
                                      MediaQuery.of(context).size.height * 0.13,
                                  decoration: BoxDecoration(
                                      color: Colors.white24,
                                      borderRadius: BorderRadius.circular(14)),
                                  child: Center(
                                    child: Text('${gamePlayer!.bord[index]}',
                                        style: TextStyle(
                                            color:
                                                gamePlayer!.colorplayer[index],
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.10)),
                                  ),
                                ),
                              ))),
                ),
              )),
          Expanded(
              flex: 3,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      '$theWiner',
                      style: TextStyle(color: Colors.amber, fontSize: 40),
                    ),
                    CupertinoButton(
                      child: Text('Repeat the Game',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                      onPressed: () {
                        setState(() {
                          gamePlayer = GamePlayer4X4();
                          checkEndPlay = 0;
                        });
                      },
                      color: Color.fromARGB(255, 24, 59, 88),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
