import 'package:flutter/material.dart';
import 'package:genius/app/shared/controllers/game_controller.dart';

import 'color_board.dart';

class GeniusBoard extends StatelessWidget {

  final GameController gameController;

  final AnimationController buttonAnimation1;
  final AnimationController buttonAnimation2;
  final AnimationController buttonAnimation3;
  final AnimationController buttonAnimation4;

  const GeniusBoard({
    Key key, 
    this.gameController, 
    this.buttonAnimation1, 
    this.buttonAnimation2, 
    this.buttonAnimation3, 
    this.buttonAnimation4
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipOval(
        child: Container(
          color: Colors.black,
          child: Container(
            padding: EdgeInsets.all(20),
            height: 360,
            width: 400,
            child: ClipOval(
              child: ColorBoard(
                buttonAnimation1: buttonAnimation1,
                buttonAnimation2: buttonAnimation2,
                buttonAnimation3: buttonAnimation3,
                buttonAnimation4: buttonAnimation4,
                gameController: gameController,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
