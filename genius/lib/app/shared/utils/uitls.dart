import 'package:flutter/material.dart';

  Color identificaCor({int value, int variacao=0}) {
    switch (value) {
      case 1:
        return (variacao==0) ? Colors.yellow : Colors.yellow[variacao];
        break;
      case 2:
        return (variacao==0) ? Colors.red : Colors.red[variacao];
        break;
      case 3:
        return (variacao==0) ? Colors.blue : Colors.blue[variacao];
        break;
      case 4:
        return (variacao==0) ? Colors.green : Colors.green[variacao];
        break;
    }
  }