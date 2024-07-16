import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sofia_portfolio/core/theme/typography.dart';
import 'package:sofia_portfolio/src/ui/widgets/hover_image.dart';
import 'package:sofia_portfolio/src/ui/widgets/social_media_line.dart';
import 'package:sofia_portfolio/src/ui/widgets/spacer.dart';
import 'package:sofia_portfolio/src/utils/screen_size.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _header(),
                _tiles(),
                spacerH(200),
                _footer(),
                SocialMedialine(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _header() {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0, bottom: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('home/main.png', width: 150),
          Text(
            'Join me on A journey\ninto the Unseen.'.toUpperCase(),
            style: AppTypography.homeHeader,
          ),
        ],
      ),
    );
  }

  _footer() {
    return Container(
      color: Colors.black,
      height: 460,
      width: 500,
      child: Stack(
        alignment: Alignment.center,
        children: [
          RotatedBox(
            quarterTurns: 1,
            child: Align(
              alignment: Alignment(1, -1),
              child: Image.asset('home/catapilar.png', width: 160),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'embark on a journey of\ndiscovery, seeing the\nworld through a fresh,\nimaginative lens.'
                    .toUpperCase(),
                style: AppTypography.homeFooter1,
              ),
              spacerH(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Text(
                  'By highlighting the unexpected and fantastical elements in nature,\nI aim to create immersive experiences that resonate both\nemotionally and intellectually. ',
                  style: AppTypography.homeFooter2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _tiles() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _tile('sketchbook', 'Art projects created\nusing Procreate.',
              'home/sketchbook.png', '/sketchbook'),
          spacerH(50),
          _tile('photography', 'Shot on iphone 11', 'home/photography.png',
              '/photography',
              isReverse: true),
          spacerH(50),
          _tile('digital Art', 'Art projects created\nusing Procreate.',
              'home/digital_art.png', '/digital-art'),
          spacerH(50),
          _tile('Me & You', 'Completed\nclient projects', 'home/meandu.png',
              '/meandu',
              isReverse: true),
        ],
      ),
    );
  }

  _tile(String title, String description, String imagePath, String routePath,
      {bool isReverse = false}) {
    final widgets = <Widget>[
      _tileText(title, description, isReverse),
      spacerW(40),
      HoverImage(imagePath: imagePath, size: 150),
    ];
    return GestureDetector(
      onTap: () {
        print('Navigating to $routePath');
        GoRouter.of(context).go(routePath);
      },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: isReverse ? widgets.reversed.toList() : widgets,
        ),
      ),
    );
  }

  Widget _tileText(String title, String description, bool isReverse) {
    final widgets = [
      Text(
        title.toUpperCase(),
        style: AppTypography.homeTile1,
      ),
      spacerW(6),
      Icon(isReverse ? Icons.arrow_back : Icons.arrow_forward,
          color: Colors.white)
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment:
          isReverse ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: isReverse ? widgets.reversed.toList() : widgets,
        ),
        Text(description,
            style: AppTypography.homeTile2, textAlign: TextAlign.start),
      ],
    );
  }
}
