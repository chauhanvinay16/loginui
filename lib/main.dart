import 'package:flutter/material.dart';
import 'package:loginui/login.dart';
import 'package:loginui/register.dart';
import 'package:loginui/welcome.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login':(context) => MyLogin(),
      'register':(context) => MyRegister(),
      'welcome':(context) => Mywel(),
    },
  ));
}

