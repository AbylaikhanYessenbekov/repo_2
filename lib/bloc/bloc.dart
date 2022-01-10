

import 'package:bloc_test_app2/bloc/event.dart';
import 'package:bloc_test_app2/bloc/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorInitialState());

  @override
  Stream<ColorState> mapEventToState(ColorEvent event) async* {
    // TODO: implement mapEventToState
    if(event is ChangeColor) {
      yield ColorLoadedState(color: event.color);

    }


  }


}