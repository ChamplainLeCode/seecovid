import 'package:flutter/material.dart';

class Style{
  static final genrale = Generale();

}

class Generale{


  static const Color G = Colors.deepOrange;

  final MaterialColor primary = MaterialColor(0xFF4A428A, {
      10: Color(0xFF4A428A).withOpacity(0.1),
      20: Color(0xFF4A428A).withOpacity(0.2),
      30: Color(0xFF4A428A).withOpacity(0.3),
      40: Color(0xFF4A428A).withOpacity(0.4),
      50: Color(0xFF4A428A).withOpacity(0.5),
      60: Color(0xFF4A428A).withOpacity(0.6),
      69: Color(0xFF4A428A).withOpacity(0.69),
      70: Color(0xFF4A428A).withOpacity(0.7),
      80: Color(0xFF4A428A).withOpacity(0.8),
      90: Color(0xFF4A428A).withOpacity(0.9),
      100: Color(0xFF4A428AA)
  });

  final Color white = const Color(0XFFFFFFFF);

  final AssetImage logo = AssetImage("images/splash/logo1.png");

  final Color red = const Color(0xFFB50919);
}