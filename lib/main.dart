import 'package:basket_ball_app/views/screens/points_counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/points_counter_cubit/points_counter_cubit.dart';

enum Teams { teamA, teamB }

void main() {
  runApp(const BasketBallApp());
}

class BasketBallApp extends StatelessWidget {
  const BasketBallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => PointsCounterCubit(),
        child: const PointsCounterPage(),
      ),
    );
  }
}
