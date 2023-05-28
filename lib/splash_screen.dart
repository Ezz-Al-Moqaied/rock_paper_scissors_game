import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/rock.png",
          width: 115,
          height: 115,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/paper.png",
              width: 115,
              height: 115,
            ),
            const SizedBox(width: 16,),
            Image.asset(
              "assets/images/scisor.png",
              width: 115,
              height: 115,
            ),
          ],
        ),
        const SizedBox(height: 50,),
        const Text("Rock Paper Scissors Game" , style: TextStyle(
          fontSize: 25 ,
          fontWeight: FontWeight.bold
        ),)
      ],
    );
  }
}
