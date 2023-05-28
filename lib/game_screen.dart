import 'dart:math';

import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<String> images = [
    'assets/images/paper.png',
    'assets/images/rock.png',
    'assets/images/scisor.png'
  ];
  int yourPoints = 0;
  int systemPoints = 0;
  int drawPoints = 0;

  int indexImageYour = 0;
  int indexImageSystem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        title: const Text("Rock Paper Scissors Game"),
        centerTitle: true,
        backgroundColor: Colors.black.withOpacity(0.8),
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            "Draw : $drawPoints",
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "You",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                yourPoints.toString(),
                style: TextStyle(
                  fontSize: 24,
                  color: yourPoints > systemPoints ? Colors.green : Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Text(
                " : ",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                systemPoints.toString(),
                style: TextStyle(
                  fontSize: 24,
                  color: systemPoints > yourPoints ? Colors.green : Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "System",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: operation,
                  child: Image.asset(images[indexImageYour]),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextButton(
                  onPressed: operation,
                  child: Image.asset(images[indexImageSystem]),
                ),
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                yourPoints = 0;
                systemPoints = 0;
                drawPoints = 0;
                indexImageYour = 0;
                indexImageSystem = 0;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: const Text(
                "reset",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  void operation() {
    setState(() {
      int youResult = Random().nextInt(3);
      int systemResult = Random().nextInt(3);
      indexImageYour = youResult;
      indexImageSystem = systemResult;

      if (youResult == systemResult) {
        drawPoints = drawPoints + 1;
      }

      if (youResult == 0 && systemResult == 1) {
        yourPoints = yourPoints + 1;
      } else if (youResult == 1 && systemResult == 2) {
        yourPoints = yourPoints + 1;
      } else if (youResult == 2 && systemResult == 0) {
        yourPoints = yourPoints + 1;
      }

      if (systemResult == 0 && youResult == 1) {
        systemPoints = systemPoints + 1;
      } else if (systemResult == 1 && youResult == 2) {
        systemPoints = systemPoints + 1;
      } else if (systemResult == 2 && youResult == 0) {
        systemPoints = systemPoints + 1;
      }
    });
  }
}
