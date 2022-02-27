import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:math';

class Chess extends StatefulWidget {
  @override
  _ChessState createState() => _ChessState();
}

class _ChessState extends State<Chess> {
  int chessNumber1 = 1;
  int chessNumber2 = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(80.0),
              child: AppBar(
                centerTitle: true,
                backgroundColor: Colors.brown,
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60.0),
                    bottomRight: Radius.circular(60.0),
                    topLeft: Radius.circular(60.0),
                    topRight: Radius.circular(60.0),
                  ),
                ),
                title: Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    'Chess',
                    style:
                        TextStyle(fontSize: 50, color: Colors.white, shadows: [
                      Shadow(
                        offset: Offset(5.0, 5.0),
                        blurRadius: 5.0,
                        color: Colors.black,
                      )
                    ]),
                  ),
                ),
              )),
          body: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/board.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Image.asset('assets/chess$chessNumber1.png'),
                      SizedBox(width: 10),
                      Image.asset('assets/chess$chessNumber1.png'),
                      SizedBox(width: 15),
                      Image.asset('assets/chess$chessNumber1.png'),
                      SizedBox(width: 25),
                      Image.asset('assets/chess$chessNumber1.png'),
                      SizedBox(width: 30),
                      Image.asset('assets/chess$chessNumber1.png'),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        chessNumber1 = Random().nextInt(10) + 1;
                        chessNumber2 = Random().nextInt(10) + 1;
                      });
                    },
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                            child: Text(
                          'Tap To Make Changes',
                          style: TextStyle(
                              fontSize: 30, color: Colors.brown.shade200),
                        ))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  child: Row(
                    children: [
                      Image.asset('assets/chess$chessNumber2.png'),
                      SizedBox(width: 10),
                      Image.asset('assets/chess$chessNumber2.png'),
                      SizedBox(width: 15),
                      Image.asset('assets/chess$chessNumber2.png'),
                      SizedBox(width: 25),
                      Image.asset('assets/chess$chessNumber2.png'),
                      SizedBox(width: 30),
                      Image.asset('assets/chess$chessNumber2.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
