import 'package:basket_ball_app/cubit/colors_cubit/colors_cubit.dart';
import 'package:basket_ball_app/cubit/points_counter_cubit/points_counter_cubit.dart';
import 'package:basket_ball_app/cubit/points_counter_cubit/points_counter_states.dart';
import 'package:basket_ball_app/main.dart';
import 'package:basket_ball_app/models/colors_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PointsCounterPage extends StatelessWidget {
  const PointsCounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    PointsCounterCubit pointsCounterCubit = context.read<PointsCounterCubit>();
    ColorsCubit colorsCubit = context.read<ColorsCubit>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appColors[colorsCubit.curColor],
          title: const Text(
            'points Counter',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
          ),
          actions: [
            IconButton(
              onPressed: () {
                context.read<ColorsCubit>().changeColor();
              },
              icon: const Icon(
                Icons.color_lens,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: BlocBuilder<PointsCounterCubit, PointsCounterState>(
          builder: (context, state) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24),
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              'Team A',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '${pointsCounterCubit.teamAPoints}',
                              style: const TextStyle(
                                  fontSize: 80, fontWeight: FontWeight.w800),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    appColors[colorsCubit.curColor],
                              ),
                              onPressed: () {
                                pointsCounterCubit.addPoints(
                                    team: Teams.teamA, points: 1);
                              },
                              child: const Text(
                                'Add 1 Point',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    appColors[colorsCubit.curColor],
                              ),
                              onPressed: () {
                                pointsCounterCubit.addPoints(
                                    team: Teams.teamA, points: 2);
                              },
                              child: const Text(
                                'Add 2 Point',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    appColors[colorsCubit.curColor],
                              ),
                              onPressed: () {
                                pointsCounterCubit.addPoints(
                                    team: Teams.teamA, points: 3);
                              },
                              child: const Text(
                                'Add 3 Point',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const Spacer(
                              flex: 12,
                            ),
                          ],
                        ),
                        const Spacer(),
                        VerticalDivider(
                          color: appColors[colorsCubit.curColor],
                          endIndent: 68,
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            const Text(
                              'Team B',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '${pointsCounterCubit.teamBPoints}',
                              style: const TextStyle(
                                  fontSize: 80, fontWeight: FontWeight.w800),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    appColors[colorsCubit.curColor],
                              ),
                              onPressed: () {
                                pointsCounterCubit.addPoints(
                                    team: Teams.teamB, points: 1);
                              },
                              child: const Text(
                                'Add 1 Point',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    appColors[colorsCubit.curColor],
                              ),
                              onPressed: () {
                                pointsCounterCubit.addPoints(
                                    team: Teams.teamB, points: 2);
                              },
                              child: const Text(
                                'Add 2 Point',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    appColors[colorsCubit.curColor],
                              ),
                              onPressed: () {
                                pointsCounterCubit.addPoints(
                                    team: Teams.teamA, points: 3);
                              },
                              child: const Text(
                                'Add 3 Point',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const Spacer(
                              flex: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            pointsCounterCubit.resetPoints();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: appColors[colorsCubit.curColor],
                              fixedSize: const Size(200, 48)),
                          child: const Text(
                            'Reset',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
