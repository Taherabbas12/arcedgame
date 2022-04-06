import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 18, 32),
      body: SafeArea(
          child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.0005),
              Text(
                'Tic-tac-toe',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 210, 8),
                    fontWeight: FontWeight.w800,
                    fontSize: 65),
              ),
              Column(
                children: [
                  Text(
                    'Choose The Game',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 210, 8),
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  CupertinoButton(
                    child: Text(
                      'Tic-tac-toe 3X3',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                    ),
                    onPressed: () {
                      Get.toNamed('tic_3X3');
                    },
                    color: Colors.amber,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  CupertinoButton(
                    child: Text(
                      'Tic-tac-toe 4X4',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                    ),
                    onPressed: () {
                      Get.toNamed('tic_4X4');
                    },
                    color: Colors.amber,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  CupertinoButton(
                    child: Text(
                      'Tic-tac-toe 5X5',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 25),
                    ),
                    onPressed: () {
                      Get.toNamed('tic_5X5');
                    },
                    color: Colors.amber,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 10),
                  Text(
                    '''
                       by: 
    taherabbasaass@gmail.com
haidermohamedhadi@gmail.com
                    ''',
                    style: TextStyle(
                        color: Color.fromARGB(255, 110, 110, 110),
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                ],
              ),
            ]),
      )),
    );
  }
}
