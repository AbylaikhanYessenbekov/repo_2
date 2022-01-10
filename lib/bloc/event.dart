import 'package:flutter/material.dart';

abstract class ColorEvent {}

class ChangeColor extends ColorEvent {
  Color color;

  ChangeColor({required this.color});
}
