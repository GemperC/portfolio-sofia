// lib/core/config/app_router.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sofia_portfolio/src/ui/pages/home_page.dart';
// import other pages as needed

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MainPage(),
    ),
    // Add other routes here
  ],
);
