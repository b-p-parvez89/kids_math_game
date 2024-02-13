
import 'dart:math';

import 'package:get/get.dart';

class MathController extends GetxController{
final Random random = Random();
  final List<String> signs = ['+', '-', '*', ];
  late int num1;
  late int num2;
  late String sign;

 

  void generateRandomOperation() {
    num1 = random.nextInt(100);
    num2 = random.nextInt(10); 
    sign = signs[random.nextInt(signs.length)]; 
    update();
  }
}