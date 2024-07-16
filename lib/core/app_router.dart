// lib/core/config/app_router.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sofia_portfolio/src/ui/pages/digital_art_page.dart';
import 'package:sofia_portfolio/src/ui/pages/flora_page.dart';
import 'package:sofia_portfolio/src/ui/pages/home_page.dart';
import 'package:sofia_portfolio/src/ui/pages/human_page.dart';
import 'package:sofia_portfolio/src/ui/pages/meandu_page.dart';
import 'package:sofia_portfolio/src/ui/pages/photography_page.dart';
import 'package:sofia_portfolio/src/ui/pages/sketchbook_page.dart';
// import other pages as needed

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MainPage(),
    ),
    GoRoute(
      path: '/sketchbook',
      builder: (context, state) => SketchboookPage(),
    ),
    GoRoute(
      path: '/digital-art',
      builder: (context, state) => DigitalArtPage(),
    ),
    GoRoute(
      path: '/photography',
      builder: (context, state) => PhotographyPage(),
    ),
    GoRoute(
      path: '/photography/flora',
      builder: (context, state) => FloraPage(),
    ),
    GoRoute(
      path: '/photography/human',
      builder: (context, state) => HumanPage(),
    ),
    GoRoute(
      path: '/meandu',
      builder: (context, state) => MeAndYouPage(),
    ),
    // Add other routes here
  ],
);
