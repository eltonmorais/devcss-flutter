import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:genius/shared/controllers/GameController.dart';

class ColorBoardPanel extends StatelessWidget {
  final GameController gameController;

  const ColorBoardPanel({Key key, this.gameController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Container(
          color: Colors.black,
          padding: EdgeInsets.all(15),
          child: ClipOval(
            child: Container(
              height: 130,
              width: 130,
              padding: EdgeInsets.all(15),
              color: Colors.grey[850],
              child: Observer(
                builder: (BuildContext context) {
                  return (gameController.isStarted)
                      ? (gameController.sucesso)
                        ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                  size: 80,
                                )
                              ],
                            )
                        : Text(
                            gameController.genius.timer.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 100,
                                fontFamily: "lcdType1",
                                color: Colors.white
                            ),
                          )
                      : (gameController.asError)
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.error,
                                  color: Colors.red,
                                  size: 80,
                                ),
                                Expanded(
                                  child: Text(
                                    "Errou!",
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 20),
                                  ),
                                )
                              ],
                            )
                          : Icon(
                              Icons.refresh,
                              color: Colors.white,
                              size: 80,
                            ); 
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}