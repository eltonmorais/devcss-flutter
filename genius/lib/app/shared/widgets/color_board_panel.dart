import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:genius/app/shared/controllers/game_controller.dart';
import 'package:get_it/get_it.dart';

class ColorBoardPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<GameController>();

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
                  return (controller.isStarted)
                      ? (controller.sucesso)
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
                              controller.genius.timer.toString(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 100,
                                  fontFamily: "lcdType1",
                                  color: Colors.white),
                            )
                      : (controller.asError)
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
                                        color: Colors.red,
                                        fontSize: 20,
                                        letterSpacing: 1.5,
                                        shadows: [
                                          Shadow(
                                            blurRadius: 8.0,
                                            color: Colors.red[400],
                                            offset: Offset(2.0, 2.0),
                                          ),
                                        ]),
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
