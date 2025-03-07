import 'package:flutter/material.dart';

import 'login_content.dart';


class TopText extends StatelessWidget {
  final Screens screen;
  const TopText({Key? key, required this.screen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      screen == Screens.createAccount ? 'Crear\nCuenta' : 'Bienvenido\nde Vuelta',
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
