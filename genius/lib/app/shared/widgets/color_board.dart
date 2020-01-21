import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:genius/app/shared/controllers/game_controller.dart';

import 'color_board_button.dart';
import 'color_board_panel.dart';

class ColorBoard extends StatelessWidget {

  final GameController gameController;
  final AnimationController buttonAnimation1;
  final AnimationController buttonAnimation2;
  final AnimationController buttonAnimation3;
  final AnimationController buttonAnimation4;

  const ColorBoard({
    Key key, 
    this.gameController, 
    this.buttonAnimation1, 
    this.buttonAnimation2, 
    this.buttonAnimation3, 
    this.buttonAnimation4
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              buildRowTop(), 
              buildRowBotton()
            ],
          ),
        ),
        Observer(
          builder: (BuildContext context){
            return ColorBoardPanel(
              gameController: gameController,
            );
          },
        )
      ],
    );
  }

  Flexible buildRowTop() {
    return Flexible(
      flex: 2,
      child: Row(
        children: <Widget>[
          Observer(
            builder: (BuildContext context){
              return Flexible(
                flex: 2,
                child: ColorBoardButton(
                  buttonValue: 1,
                  buttonAnimation: buttonAnimation1,
                  buttonTap: (gameController.isStarted&&gameController.isLoading==false)
                    ? (){
                        buttonAnimation1.forward();
                        gameController.click(1);
                      }
                    : null,
                ),
              );
            },
          ),
          Observer(
            builder: (BuildContext context){
              return Flexible(
                flex: 2,
                child: ColorBoardButton(
                  buttonValue: 2,
                  buttonAnimation: buttonAnimation2,
                  buttonTap: (gameController.isStarted&&gameController.isLoading==false)
                    ? (){
                        buttonAnimation2.forward();
                        gameController.click(2);
                      }
                    : null,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  Flexible buildRowBotton() {
    return Flexible(
      flex: 2,
      child: Row(
        children: <Widget>[
          Observer(
            builder: (BuildContext context){
              return Flexible(
                flex: 2,
                child: ColorBoardButton(
                  buttonValue: 4,
                  buttonAnimation: buttonAnimation4,
                  buttonTap: (gameController.isStarted&&gameController.isLoading==false)
                    ? (){
                        buttonAnimation4.forward();
                        gameController.click(4);
                      }
                    : null,
                ),
              );
            },
          ),
          Observer(
            builder: (BuildContext context){
              return Flexible(
                flex: 2,
                child: ColorBoardButton(
                  buttonValue: 3,
                  buttonAnimation: buttonAnimation3,
                  buttonTap: (gameController.isStarted&&gameController.isLoading==false)
                    ? (){
                        buttonAnimation3.forward();
                        gameController.click(3);
                      }
                    : null,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  static AudioPlayer() {}

}
