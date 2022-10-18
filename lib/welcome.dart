import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snake_game/snakegame.dart';

class WelcomeActivity extends StatelessWidget {
  const WelcomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150.0,
            ),
            Image.asset(
              'assets/snake.png',
              height: 100.0,
            ),
            const SizedBox(
              height: 50.0,
            ),
            const Text('Snake Game',style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold,color: Colors.green),),
            const Spacer(),
            InkWell(
              onTap: (){
                Get.to( const SnakeGame());
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 56.0,
                  width: 150.0,
                  decoration:  BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: const Center(child:  Text('Play',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold,),)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
