import 'package:flutter/material.dart';
import 'screens/login_screen/login_screen.dart';
import 'utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData( 
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: kprimaryColor, 
          fontFamily: 'Montserrat'
          ),
      ),
      home: const LoginScreen(),
    );
  }
}