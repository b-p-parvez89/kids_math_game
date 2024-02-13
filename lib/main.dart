import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_math_game/screen/HomePage.dart';
import 'package:get_storage/get_storage.dart';
import 'package:kids_math_game/screen/sphash_screen.dart';
void main() async{
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen()
    );
  }
}
