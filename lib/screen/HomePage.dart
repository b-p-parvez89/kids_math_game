// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_math_game/get/answer.dart';
import 'package:kids_math_game/get/controller.dart';
import 'package:kids_math_game/screen/sphash_screen.dart';

class RandomMathOperation extends StatefulWidget {
  @override
  State<RandomMathOperation> createState() => _RandomMathOperationState();
}

class _RandomMathOperationState extends State<RandomMathOperation> {
  MathController mathController = Get.put(MathController());
  int scor = 0;
  @override
  void initState() {
    mathController.generateRandomOperation();
    _startTimer();
    super.initState();
  }

  TextEditingController answerControllers = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String n1 = mathController.num1.toString();
    var numm1 = n1.split("");
    String n2 = mathController.num2.toString();
    var numm2 = n2.split("");
    double ans = getAnswar.answer(
        num1: mathController.num1,
        num2: mathController.num2,
        sign: mathController.sign);
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "data:image/jpeg;base64,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"))),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    _formatTime(_seconds),
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "Score: $scor",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 60,
                width: 100,
                child: numm1.length == 1
                    ? Row(
                        children: [
                          SizedBox(
                            width: 45,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 3),
                            child: Container(
                              height: 50,
                              width: 40,
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      width: 1, color: Colors.black)),
                              child: Center(
                                  child: Text(
                                numm1[0],
                                style: TextStyle(
                                    fontSize: 32, color: Colors.black),
                              )),
                            ),
                          )
                        ],
                      )
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: numm1.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 3),
                            child: Container(
                              height: 50,
                              width: 38,
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      width: 1, color: Colors.black)),
                              child: Center(
                                  child: Text(
                                numm1[index],
                                style: TextStyle(
                                    fontSize: 32, color: Colors.black),
                              )),
                            ),
                          );
                        }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(mathController.sign,
                      style: TextStyle(fontSize: 45, color: Colors.black)),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 50,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: numm2.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 3),
                            child: Container(
                              height: 50,
                              width: 40,
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      width: 1, color: Colors.black)),
                              child: Center(
                                  child: Text(
                                numm2[index],
                                style: TextStyle(
                                    fontSize: 32, color: Colors.black),
                              )),
                            ),
                          );
                        }),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Divider(
                  height: 5,
                  color: Colors.black,
                  thickness: 3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 65),
                child: Container(
                    height: 60,
                    width: 125,
                    alignment: Alignment.center,
                    child: TextField(
                      autofocus: true,
                      controller: answerControllers,
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      textAlign: TextAlign.end,
                    )),
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                      height: 45,
                      minWidth: 100,
                      color: Colors.blue,
                      child: Text("Show answer"),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Text(
                                  "Answer is $ans",
                                  style: TextStyle(
                                      fontSize: 32, color: Colors.black),
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: Text(
                                        "Back",
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.black),
                                      ))
                                ],
                              );
                            });
                      }),
                  MaterialButton(
                      height: 45,
                      minWidth: 120,
                      color: Colors.blue,
                      child: Text("Next"),
                      onPressed: () {
                        if (ans == int.parse(answerControllers.text)) {
                          setState(() {
                            scor = scor + 1;
                            mathController.generateRandomOperation();
                          });
                          answerControllers.text = '';
                        } else {
                          print("Something is wrong");
                          SnackBar(
                              content: Text("Please Input the right Number"));
                        }
                      }),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                      height: 45,
                      minWidth: 100,
                      color: Colors.blue,
                      child: Text("Skip"),
                      onPressed: () {
                        setState(() {
                          mathController.generateRandomOperation();
                          answerControllers.text = '';
                        });
                      }),
                  MaterialButton(
                      height: 45,
                      minWidth: 100,
                      color: Colors.blue,
                      child: Text("Game Over"),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Game Over"),
                                content: Text(
                                  "Score is $scor",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Get.to(SplashScreen());
                                      },
                                      child: Text("Quit Game")),
                                  TextButton(
                                      onPressed: () {
                                        Get.to(RandomMathOperation());
                                      },
                                      child: Text("New Game"))
                                ],
                              );
                            });
                      })
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }

  GetAnswar getAnswar = Get.put(GetAnswar());
  int _seconds = 300; // Set the initial duration of the timer
  late Timer _timer;

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_seconds > 0) {
          _seconds--;
        } else {
          _timer.cancel();
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Game Over"),
                  content: Text(
                    "Score is $scor",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  actions: [
                    TextButton(
                      onPressed: (){
                        Get.to(SplashScreen());
                      },
                      child: Text("Quit Game"),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(RandomMathOperation());
                        },
                        child: Text("New Game"))
                  ],
                );
              });
        }
      });
    });
  }

  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = remainingSeconds.toString().padLeft(2, '0');
    return '$minutesStr:$secondsStr';
  }
}
