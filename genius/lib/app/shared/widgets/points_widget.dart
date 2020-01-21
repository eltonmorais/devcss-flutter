import 'package:flutter/material.dart';

class PointsWidget extends StatelessWidget {
  final String value;
  final String label;

  const PointsWidget({
    Key key,
    @required this.value,
    @required this.label,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Stack(
        children: <Widget>[
          IgnorePointer(
            child: TextField(
              readOnly: true,
              textAlign: TextAlign.center,
              controller: TextEditingController(text: " "),
              style: TextStyle(
                color: Colors.white,
                fontFamily: "lcdType1",
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
              decoration: InputDecoration(
                labelText: label,
                enabled: true,
                border: OutlineInputBorder(),
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontFamily: "Roboto",
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: FittedBox(
                child: Text(
                  value,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "lcdType1",
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
