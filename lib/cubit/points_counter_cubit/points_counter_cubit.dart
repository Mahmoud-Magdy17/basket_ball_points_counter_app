import 'package:basket_ball_app/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'points_counter_states.dart';

class PointsCounterCubit extends Cubit<PointsCounterState> {
  PointsCounterCubit() : super(PointsCounterInitial());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void addPoints({required Teams team, required int points}) {
    if (team == Teams.teamA) {
      teamAPoints++;
    } else if (team == Teams.teamB) {
      teamBPoints++;
    }
    emit(AddPointsDone(team: team));
  }

  void resetPoints() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(ResetPointsDone());
  }
}
