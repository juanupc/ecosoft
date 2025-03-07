import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ing_economica_ecosoft/screens/login_screen/animations/change_screen_animation.dart';
import 'package:ing_economica_ecosoft/screens/login_screen/components/login_content.dart';
import 'package:ing_economica_ecosoft/utils/constants.dart';

class BottomText extends StatelessWidget {
  final Screens screen;

  const BottomText({Key? key, required this.screen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(!ChangeScreenAnimation.isPlaying){
          ChangeScreenAnimation.forward();
          ChangeScreenAnimation.currentScreen = Screens.values[1 - ChangeScreenAnimation.currentScreen.index];
        }
      },
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 16, fontFamily: 'Montserrat'),
            children: [
              TextSpan(
                text:
                    screen == Screens.createAccount
                        ? 'Ya tienes una cuenta con nosotros? '
                        : 'No tienes una cuenta? ',
                style: const TextStyle(
                  color: kprimaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text:
                    screen == Screens.createAccount
                        ? 'Iniciar sesión'
                        : 'Crear cuenta',
                style: const TextStyle(
                  color: ksecondaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
