import 'package:flutter/material.dart';

class Styling {
  Styling();

  Color primary() {
    return Color(0xFF4C748B);
  }

  Color secondary() {
    return Color(0xFFF3F3F3);
  }

  Color tertiary() {
    return Color(0xFF757474);
  }

  Color quaternary() {
    return Color(0xFFE2E2E2);
  }

  Color quinary() {
    return Color(0xFFFFFFFF);
  }

  TextStyle title(Color c, double size) {
    return TextStyle(
        fontFamily: 'Norwester',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        fontSize: size,
        color: c);
  }

  TextStyle subtitle(Color c, double size) {
    return TextStyle(
        fontFamily: 'Kollektif',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        fontSize: size,
        color: c);
  }

  TextStyle subtitleBold(Color c, double size) {
    return TextStyle(
        fontFamily: 'Kollektif',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.bold,
        fontSize: size,
        color: c);
  }

  TextStyle text(Color c, double size) {
    return TextStyle(
        fontFamily: 'Montserrat',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        fontSize: size,
        color: c);
  }

  TextStyle textItalics(Color c, double size) {
    return TextStyle(
        fontFamily: 'Montserrat',
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.normal,
        fontSize: size,
        color: c);
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        width: 3.0,
        color: primary(),
      ),
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
    );
  }

  BoxDecoration otherBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        width: 3.0,
        color: quinary(),
      ),
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
    );
  }
}
