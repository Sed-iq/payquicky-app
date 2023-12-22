import 'package:flutter/material.dart';

class Txt extends StatelessWidget {
  final Color? colors;
  final String text;
  final double? size;
  final dynamic weight;
  final TextDecoration? decoration;
  final Color? decorationColor;
  final dynamic align;
  Txt(
      {super.key,
      required this.text,
      this.size,
      this.weight,
      this.decorationColor,
      this.align,
      this.decoration,
      this.colors});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      textAlign: align ?? TextAlign.start,
      style: TextStyle(
          color: colors ?? Colors.white,
          decorationColor: decorationColor ?? Colors.amber,
          decoration: decoration ?? TextDecoration.none,
          fontSize: size,
          fontWeight: weight),
    );
  }
}
