import 'package:flutter/material.dart';
import 'package:ing_economica_ecosoft/screens/login_screen/components/login_content.dart';

class ChangeScreenAnimation {
  static late final AnimationController topTextController;
  static late final Animation<Offset> topTextAnimation;

  static late final AnimationController bottomTextController;
  static late final Animation<Offset> bottomTextAnimation;



  static var isPlaying = false;
  static var currentScreen = Screens.createAccount;

  static Animation<Offset> _createAnimation({
    required Offset begin,
    required Offset end,
    required AnimationController parent,
  }) {
    return Tween(begin: begin, end: end).animate(
      CurvedAnimation(
        parent: parent,
        curve: Curves.easeInOut,
      ),
    );
  }

  static void initalize({
    required TickerProvider vsync,
  }) {
    topTextController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 200),
    );

    topTextAnimation = _createAnimation(
      begin: Offset.zero,
      end: const Offset(-1.2, 0),
      parent: topTextController,
    );
  }
  static void dispose() {
    topTextController.dispose();
  }
  static Future<void> forward() async {
    isPlaying = true;

    await topTextController.forward();
    await topTextController.reverse();

    isPlaying = false;
  }
}