import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:genius/shared/controllers/GameController.dart';
import 'package:genius/shared/widgets/BackgroundWidget.dart';
import 'package:mobx/mobx.dart';

import 'shared/widgets/GeniusBoard.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TextEditingController scoreController = TextEditingController();

  GameController gameController = GameController();

  // ReactionDisposer disposer;

  AnimationController animationButton1;
  AnimationController animationButton2;
  AnimationController animationButton3;
  AnimationController animationButton4;

  @override
  void initState() {

    scoreController.text = "0";

    super.initState();

    animationButton1 = AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    animationButton2 = AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    animationButton3 = AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    animationButton4 = AnimationController(duration: Duration(milliseconds: 200), vsync: this);

    // disposer = autorun(
    //   (reaction){
    //     setState(() {
    //       if(gameController.sucesso){
    //       sleep(Duration(seconds: 2));
    //       gameController.gameContinue();
    //     }
    //     });
    //   }
    // );

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: <Widget>[
            BackgroundWidget(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              "GENIUS",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 45,
                                  color: Colors.blueGrey[100],
                                  fontFamily: "arcadeType1"),
                            ),
                          ),
                          Text(
                            "Por: Claudney Sarti Sessa",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.blueGrey[100],
                                fontFamily: "arcadeType1"),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 7,
                  child: Container(
                    alignment: Alignment.topCenter,
                    color: Colors.transparent,
                    child: GeniusBoard(
                      buttonAnimation1: animationButton1,
                      buttonAnimation2: animationButton2,
                      buttonAnimation3: animationButton3,
                      buttonAnimation4: animationButton4,
                      gameController: gameController,
                    ),
                  ),
                ),
                Observer(
                  builder: (BuildContext context) {
                    return Flexible(
                      flex: 1,
                      child: SizedBox(
                        width: 200,
                        height: 45,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.green[700],
                          child: Text(
                            "Jogar",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: (gameController.isStarted)
                              ? null
                              : () {
                                  gameController.gameStart(10);
                                },
                        ),
                      ),
                    );
                  },
                ),
                Divider(
                  color: Colors.transparent,
                ),
                Observer(
                  builder: (BuildContext context) {
                    return Flexible(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.topCenter,
                        color: Colors.transparent,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    child: TextField(
                                      readOnly: true,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "lcdType1",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 35),
                                      controller: TextEditingController(
                                          text: gameController.genius.contador
                                              .toString()),
                                      decoration: InputDecoration(
                                          labelText: "Pontuação",
                                          labelStyle: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Roboto",
                                              fontSize: 20),
                                          enabled: true,
                                          border: OutlineInputBorder()),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    child: TextField(
                                      readOnly: true,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "lcdType1",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 35),
                                      controller: scoreController,
                                      decoration: InputDecoration(
                                          focusColor: Colors.white,
                                          fillColor: Colors.white,
                                          labelText: "Record",
                                          labelStyle: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Roboto",
                                              fontSize: 20),
                                          enabled: true,
                                          hoverColor: Colors.white,
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white,
                                                  width: 5.0))),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
