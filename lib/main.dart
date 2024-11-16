/*
import 'package:basket_ball/screen/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BasketBall());

class BasketBall extends StatelessWidget {
  const BasketBall({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
*/
/*
import 'package:basket_ball/screen/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BasketBall());

class BasketBall extends StatelessWidget {
  const BasketBall({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
*/
import 'package:basket_ball/views/home_view.dart';
import 'package:basket_ball/views/x_o_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      const XOApp(),
    );

class XOApp extends StatelessWidget {
  const XOApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.homeViewId: (context) => const HomeView(),
        XOView.xoViewId: (context) => const XOView(),
      },
      initialRoute: HomeView.homeViewId,
    );
  }
}
