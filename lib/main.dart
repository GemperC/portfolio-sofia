import 'package:flutter/material.dart';
import 'package:sofiaxima/core/app_router.dart';

void main() {
  runApp(const PortfolioWebApp());
}

class PortfolioWebApp extends StatelessWidget {
  const PortfolioWebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      themeMode: ThemeMode.dark,
      title: 'Sofiaxima',
      routerConfig: router,
    );
  }
}
