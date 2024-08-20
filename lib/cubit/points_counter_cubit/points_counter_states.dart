import 'package:basket_ball_app/main.dart';
import 'package:flutter/material.dart';

abstract class PointsCounterState {}

class PointsCounterInitial extends PointsCounterState {}

class AddPointsDone extends PointsCounterState {
  final Teams team;

  AddPointsDone({required this.team}) {
    debugPrint('points added to team $team');
  }
}

class ResetPointsDone extends PointsCounterState {}

