import 'package:get/get.dart';

class GetAnswar extends GetxController{

double  answer({required  num1, required  num2,required String sign}){
if(sign=='+'){
return num1+num2;
}else if(sign=='-'){
  return num1-num2;
}else if(sign=='*'){
  return num1*num2;
}
return num1/num2;
  }
}