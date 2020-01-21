import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:genius/app/shared/controllers/game_controller.dart';
import 'package:genius/app/shared/widgets/background_widget.dart';
import 'package:genius/app/shared/widgets/genius_board.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import 'widgets/points_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final controller = GetIt.I.get<GameController>();

  AnimationController buttonAnimation1;
  AnimationController buttonAnimation2;
  AnimationController buttonAnimation3;
  AnimationController buttonAnimation4;

  @override
  void initState() {
    super.initState();

    buttonAnimation1 =
        AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    buttonAnimation2 =
        AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    buttonAnimation3 =
        AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    buttonAnimation4 =
        AnimationController(duration: Duration(milliseconds: 200), vsync: this);

    reaction((r) => controller.currentValues.length, (length) async {
      // Esperando 1 segundo antes de iniciar para não ficar estranho pro usuário
      await Future.delayed(const Duration(seconds: 1));
      playAnimations();
    });

    controller.genius.getRecord();
  }

  Future<void> animateButton(AnimationController buttonController) async {
    await buttonController.forward();
    await buttonController.reverse();
  }

  Future<void> playAnimations() async {
    for (var buttonPosition in controller.currentValues) {
      if (controller.isStarted) {
        switch (buttonPosition) {
          case 1:
            await animateButton(buttonAnimation1);
            break;
          case 2:
            await animateButton(buttonAnimation2);
            break;
          case 3:
            await animateButton(buttonAnimation3);
            break;
          case 4:
            await animateButton(buttonAnimation4);
            break;
        }
      }
    }
    controller.setLoadingOff();
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
                            FittedBox(
                              child: Text(
                                "GENIUS",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  letterSpacing: 1.5,
                                  fontSize: 55,
                                  color: Colors.blueGrey[100],
                                  fontFamily: "arcadeType1",
                                ),
                              ),
                            ),
                            Spacer(),
                            Center(
                              child: Text(
                                "Por: Claudney Sarti Sessa",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.blueGrey[100],
                                    fontFamily: "arcadeType1"),
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
                          buttonAnimation1: buttonAnimation1,
                          buttonAnimation2: buttonAnimation2,
                          buttonAnimation3: buttonAnimation3,
                          buttonAnimation4: buttonAnimation4),
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
                            onPressed: (controller.isStarted)
                                ? null
                                : () {
                                    controller.gameStart(10);
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
                                child: PointsWidget(
                                  label: "Pontuação",
                                  value: controller.genius.contador.toString(),
                                ),
                              ),
                              Expanded(
                                child: PointsWidget(
                                  label: "Record",
                                  value: controller.genius.record.toString(),
                                ),
                              ),
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
