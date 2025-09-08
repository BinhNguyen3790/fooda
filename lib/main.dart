import 'package:flutter/material.dart';
import 'package:fooda/screens/about_us.dart';
import 'package:fooda/screens/home.dart';
import 'package:fooda/screens/loading.dart';
import 'package:fooda/screens/login.dart';
import 'package:fooda/screens/sign_in.dart';
import 'package:fooda/screens/sign_up.dart';
import 'package:fooda/screens/welcome.dart';

void main() {
  runApp( 
    MaterialApp(
      debugShowCheckedModeBanner: false, 
      routes: {
        "/": (context) => Loading(), 
        "home": (context) => Home(), 
        "about_us": (context) => AboutUs(), 
        "welcome": (context) => Welcome(), 
        "login": (context) => Login(), 
        "sign_in": (context) => SignIn(), 
        "sign_up": (context) => SignUp(), 
      },
    )
  );
}

