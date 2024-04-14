import 'package:basket_ball_app/models/colors_model.dart';
import 'package:flutter/material.dart';

class PointsCounterPage extends StatefulWidget {
  const PointsCounterPage({super.key});
  @override
  State<PointsCounterPage> createState() => _PointsCounterPageState();
}

class _PointsCounterPageState extends State<PointsCounterPage> {
  int curColor = 0;
  int teamAPoints = 0;
  int teamBPoints = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appColors[curColor],
          title: const Text(
            'points Counter',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  curColor++;
                  curColor %= 4;
                });
              },
              icon: const Icon(
                Icons.color_lens,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24),
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
                          '$teamAPoints',
                          style: const TextStyle(
                              fontSize: 80, fontWeight: FontWeight.w800),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: appColors[curColor],
                          ),
                          onPressed: () {
                            setState(() {
                              teamAPoints += 1;
                            });
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
                            backgroundColor: appColors[curColor],
                          ),
                          onPressed: () {
                            setState(() {
                              teamAPoints += 2;
                            });
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
                            backgroundColor: appColors[curColor],
                          ),
                          onPressed: () {
                            setState(() {
                              teamAPoints += 3;
                            });
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
                      color: appColors[curColor],
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
                          '$teamBPoints',
                          style: const TextStyle(
                              fontSize: 80, fontWeight: FontWeight.w800),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: appColors[curColor],
                          ),
                          onPressed: () {
                            setState(() {
                              teamBPoints += 1;
                            });
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
                            backgroundColor: appColors[curColor],
                          ),
                          onPressed: () {
                            setState(() {
                              teamBPoints += 2;
                            });
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
                            backgroundColor: appColors[curColor],
                          ),
                          onPressed: () {
                            setState(() {
                              teamBPoints += 3;
                            });
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
                        setState(() {
                          teamAPoints = 0;
                          teamBPoints = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: appColors[curColor],
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
        ),
      ),
    );
  }
}
