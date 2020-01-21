import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:genius/app/shared/controllers/game_controller.dart';
import 'package:genius/app/shared/widgets/background_widget.dart';
import 'package:genius/app/shared/widgets/genius_board.dart';
import 'package:mobx/mobx.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  TextEditingController scoreController = TextEditingController();
  GameController gameController = GameController();

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

    reaction((r) => gameController.currentValues.length, (length) async {

      // Esperando 1 segundo antes de iniciar para não ficar estranho pro usuário
      await Future.delayed(const Duration(seconds: 1));
      playAnimations();

    });

  }

  Future<void> animateButton(AnimationController buttonController) async {
    await buttonController.forward();
    await buttonController.reverse();
  }

  Future<void> playAnimations() async {
    for (var buttonPosition in gameController.currentValues) {
      if(gameController.isStarted){
        switch (buttonPosition) {
          case 1:
            await animateButton(animationButton1);
            break;
          case 2:
            await animateButton(animationButton2);
            break;
          case 3:
            await animateButton(animationButton3);
            break;
          case 4:
            await animateButton(animationButton4);
            break;
        }
      }
    }
    gameController.setLoadingOff();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Stack(
            children: <Widget>[
              BackgroundWidget(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
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
                                  letterSpacing: 1.5,
                                  fontSize: 55, 
                                  color: Colors.blueGrey[100], 
                                  fontFamily: "arcadeType1"
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                "Por: Claudney Sarti Sessa",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10, color: Colors.blueGrey[100], fontFamily: "arcadeType1"),
                              ),
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
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                  Observer(
                    builder: (BuildContext context) {
                      return Flexible(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.topCenter,
                          color: Colors.transparent,
                          child: Row(
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
                                        text: gameController.genius.contador.toString()),
                                    decoration: InputDecoration(
                                        labelText: "Pontuação",
                                        labelStyle: TextStyle(
                                            color: Colors.white, fontFamily: "Roboto", fontSize: 20),
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
                                            color: Colors.white, fontFamily: "Roboto", fontSize: 20),
                                        enabled: true,
                                        hoverColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.white, width: 5.0))),
                                  ),
                                ),
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
      ),
    );
  }
}