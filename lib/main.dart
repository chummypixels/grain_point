import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grain_point/bottom_nav_bar.dart';
import 'package:grain_point/profile.dart';
import 'package:grain_point/screens/forgot_password/forgot_password.dart';
import 'package:grain_point/screens/home_screen.dart';
import 'package:grain_point/screens/login/login_screen.dart';
import 'package:grain_point/user_home_screen/home.dart';
import 'package:grain_point/user_home_screen/widgets/frame_one_widget.dart';
import 'package:grain_point/user_home_screen/widgets/frame_two_widget.dart';
import 'package:grain_point/widgets/container_card.dart';

import 'screens/onBoardingScreen.dart';
import 'screens/signup/sign_up_screen.dart';
import 'user_home_screen/binding/user_home_screen_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        initialBinding: UserHomeScreenBinding(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen()
        //OnboardingScreen(),
        );
  }
}
