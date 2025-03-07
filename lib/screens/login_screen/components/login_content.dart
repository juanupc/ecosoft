import 'package:flutter/material.dart';
import 'package:ing_economica_ecosoft/utils/constants.dart';

import 'top_text.dart';

enum Screens { createAccount, wellcomeBack }

class LoginContent extends StatelessWidget {
  const LoginContent({Key? key}) : super(key: key);

  Widget inputfield(String hint, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: TextField(
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
              prefixIcon: Icon(iconData),
            ),
          ),
        ),
      ),
    );
  }

  Widget loginbutton(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 16),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: const StadiumBorder(),
          elevation: 8,
          //primary: ksecondaryColor,
          shadowColor: Colors.black87,
        ),
        child: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget orDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 8),
      child: Row(
        children: [
          Flexible(child: Container(height: 1, color: kprimaryColor)),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'O',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Flexible(child: Container(height: 1, color: kprimaryColor)),
        ],
      ),
    );
  }

  Widget logos() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/google.png'),
          const SizedBox(width: 24),
          Image.asset('assets/images/facebook.png'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const currentScreen = Screens.createAccount;

    return Stack(
      children: [
        Positioned(top: 136, left: 24, child: TopText(screen: currentScreen)),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  inputfield('Nombre', Icons.person_outline),
                  inputfield('Correo', Icons.mail_outline),
                  inputfield('Contraseña', Icons.lock_clock_outlined),
                  loginbutton('Crear Cuenta'),
                  orDivider(),
                  logos(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
