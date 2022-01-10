import 'package:flutter/material.dart';

abstract class ColorState {}

class ColorInitialState extends ColorState {}

class ColorLoadingState extends ColorState {}

class ColorLoadedState extends ColorState {
  Color color;

  ColorLoadedState({required this.color});


}

class ErrorState extends ColorState {}
