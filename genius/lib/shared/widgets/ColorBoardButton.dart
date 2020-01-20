import 'package:flutter/material.dart';
import 'package:genius/shared/utils/uitls.dart';

class ColorBoardButton extends StatefulWidget {
  final int buttonValue;
  final AnimationController buttonAnimation;
  final String buttonText;
  final Function() buttonTap;

  const ColorBoardButton({Key key, this.buttonValue, this.buttonText, this.buttonTap, this.buttonAnimation})
      : super(key: key);

  @override
  _ColorBoardButtonState createState() => _ColorBoardButtonState();
}

class _ColorBoardButtonState extends State<ColorBoardButton> with SingleTickerProviderStateMixin {
  // AnimationController _animationController;
  Animation<double> _animation;

  Tween<double> opacityTween;

  @override
  void initState() {
    super.initState();

    // initialize animation controllers for the button
    // _animationController = AnimationController(
    //   duration: Duration(milliseconds: 200),
    //   vsync: this
    // );

    _animation = Tween<double>(begin: 1, end: 0).animate(widget.buttonAnimation);
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) widget.buttonAnimation.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: BorderDirectional(
              start: (widget.buttonValue == 2 || widget.buttonValue == 3)
                  ? BorderSide(width: 8)
                  : BorderSide.none,
              end: (widget.buttonValue == 1 || widget.buttonValue == 4)
                  ? BorderSide(width: 8)
                  : BorderSide.none,
              top: (widget.buttonValue == 3 || widget.buttonValue == 4)
                  ? BorderSide(width: 8)
                  : BorderSide.none,
              bottom: (widget.buttonValue == 1 || widget.buttonValue == 2)
                  ? BorderSide(width: 8)
                  : BorderSide.none)),
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Opacity(
            opacity: _animation.value,
            child: Scaffold(
              backgroundColor: identificaCor(value: widget.buttonValue),
              body: InkWell(
                onTap: widget.buttonTap,
                hoverColor: identificaCor(value: widget.buttonValue),
                highlightColor: identificaCor(value: widget.buttonValue),
                focusColor: identificaCor(value: widget.buttonValue),
                splashColor: identificaCor(value: widget.buttonValue), //Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
