// Base Navigation bar
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:payquicky/components/config.dart';
import 'package:payquicky/components/txt.dart';

class Btn extends StatefulWidget {
  final int id; // to identify which is which
  final Function onPressed;
  final String title;
  final int screen;
  final IconData icon;
  const Btn(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.id,
      required this.screen,
      required this.icon});

  @override
  State<Btn> createState() => _BtnState();
}

class _BtnState extends State<Btn> {
  Color color() {
    if (widget.screen == widget.id) {
      return BG_AMBER;
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            foregroundColor: Color.fromRGBO(15, 34, 63, 1),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        onPressed: () {
          widget.onPressed();
        },
        child: Column(
          children: [
            Icon(
              widget.icon,
              color: color(),
            ),
            Txt(
              text: widget.title,
              colors: color(),
            )
          ],
        ));
  }
}
