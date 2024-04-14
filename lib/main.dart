import 'package:basket_ball_app/views/screens/points_counter_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BasketBallApp());
}

class BasketBallApp extends StatelessWidget {
  const BasketBallApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PointsCounterPage(),
    );
  }
}


