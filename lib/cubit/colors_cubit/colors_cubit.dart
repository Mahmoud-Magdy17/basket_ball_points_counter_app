import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'colors_state.dart';

class ColorsCubit extends Cubit<ColorsState> {
  ColorsCubit() : super(ColorsInitial());
  int curColor = 0;
  void changeColor() {
    
  }
}
