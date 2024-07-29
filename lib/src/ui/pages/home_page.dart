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
    print(context.width);

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: <Widget>[
                _header(),
                _tiles(),
                spacerH(60),
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
      padding:
          const EdgeInsets.only(top: 100.0, bottom: 80, right: 20.0, left: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/icon.png",
            width: ScreenInfo(context).scaler(100),
          ),
          Text(
            'Join me on A journey\ninto the Unseen.'.toUpperCase(),
            style: AppTypography.homeHeader.copyWith(
              fontSize: ScreenInfo(context).scaler(18),
            ),
          ),
        ],
      ),
    );
  }

  _footer() {
    return Container(
      color: Colors.black,
      width: 500.scaler(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'embark on a journey of\ndiscovery, seeing the\nworld through a fresh,\nimaginative lens.'
                    .toUpperCase(),
                style: AppTypography.homeFooter1.copyWith(
                  fontSize: ScreenInfo(context).scaler(25),
                ),
                textAlign: TextAlign.center,
              ),
              spacerH(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Text(
                  'By highlighting the unexpected and fantastical elements in nature, I aim to create immersive experiences that resonate both emotionally and intellectually. ',
                  style: AppTypography.homeFooter2.copyWith(
                    fontSize: ScreenInfo(context).scaler(14),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              RotatedBox(
                quarterTurns: 1,
                child: Image.asset(
                  "assets/catapilar.png",
                  width: ScreenInfo(context).scaler(100),
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
        children: <Widget>[
          _tile('sketchbook', 'Art projects created\nusing Procreate.',
              'assets/sketchbook_home.png', '/sketchbook',
              context: context),
          spacerH(50),
          _tile('photography', 'Shot on iphone 11', 'assets/photography.png',
              '/photography',
              isReverse: true, context: context),
          spacerH(50),
          _tile('digital Art', 'Art projects created\nusing Procreate.',
              'assets/digital_art_home.png', '/digital-art',
              context: context),
          spacerH(50),
          _tile('Me & You', 'Completed\nclient projects',
              'assets/meandu_home.png', '/meandu',
              context: context, isReverse: true),
        ],
      ),
    );
  }

  Widget _tile(
      String title, String description, String imagePath, String routePath,
      {bool isReverse = false, required BuildContext context}) {
    final widgets = <Widget>[
      _tileText(title, description, isReverse),
      spacerW(40),
      HoverImage(
        imagePath: imagePath,
        size: ScreenInfo(context).scaler(150),
        onTap: () {
          print('Navigating to $routePath');
          GoRouter.of(context).go(routePath);
        },
      ),
    ];
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: isReverse ? widgets.reversed.toList() : widgets,
      ),
    );
  }

  Widget _tileText(String title, String description, bool isReverse) {
    final widgets = [
      Text(
        title.toUpperCase(),
        style: AppTypography.homeTile1.copyWith(
          fontSize: ScreenInfo(context).scaler(15),
        ),
      ),
      spacerW(6),
      Icon(isReverse ? Icons.arrow_back : Icons.arrow_forward,
          color: Colors.white, size: ScreenInfo(context).scaler(20))
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
            style: AppTypography.homeTile2
                .copyWith(fontSize: ScreenInfo(context).scaler(12)),
            textAlign: TextAlign.start),
      ],
    );
  }
}
