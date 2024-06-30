import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sofia_portfolio/core/theme/typography.dart';
import 'package:sofia_portfolio/src/ui/widgets/hover_image.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _header(),
              _tiles(),
              spacerH(200),
              _footer(),
              _footerLine()
            ],
          ),
        ),
      ),
    );
  }

  _socialMediaRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _socialMediaButton('Instagram', 'https://www.instagram.com/sofia/'),
        spacerW(20),
        _socialMediaButton('Twitter', 'https://twitter.com/sofia/'),
        spacerW(20),
        _socialMediaButton('LinkedIn', 'https://www.linkedin.com/in/sofia/'),
      ],
    );
  }

  _socialMediaButton(String name, String url) {
    return GestureDetector(
      onTap: () {
        print('Navigating to $url');
        // GoRouter.of(context).go(url);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Text(name, style: AppTypography.homeFooter2),
            spacerW(10),
            Icon(Icons.arrow_outward_rounded, color: Colors.white)
          ],
        ),
      ),
    );
  }

  _footerLine() {
    return Row(
      children: [
        Text("SOFIAMAINA.ARTTM", style: AppTypography.homeFooter2),
        spaceTaker(),
        _socialMediaRow(),
      ],
    );
  }

  _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset('home/main.png',
            width: MediaQuery.of(context).size.width * 0.3),
        Text(
          'Join me on A journey\ninto the Unseen.'.toUpperCase(),
          style: AppTypography.homeHeader,
        ),
      ],
    );
  }

  _footer() {
    return Container(
      height: 500,
      child: Stack(
        children: [
          RotatedBox(
            quarterTurns: 1,
            child: Align(
              alignment: Alignment(1, -1),
              child: Image.asset('home/catapilar.png',
                  width: MediaQuery.of(context).size.width * 0.3),
            ),
          ),
          Column(
            children: <Widget>[
              Text(
                'embark on a journey of discovery, seeing the world through a fresh, imaginative lens.'
                    .toUpperCase(),
                style: AppTypography.homeFooter1,
              ),
              Text(
                'By highlighting the unexpected and fantastical elements in nature,\nI aim to create immersive experiences that resonate both\nemotionally and intellectually. ',
                style: AppTypography.homeFooter2,
              ),
              spacerH(200),
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
          _tileReverse('photography', 'Shot on iphone 11',
              'home/photography.png', '/photography'),
          spacerH(50),
          _tile('digital Art', 'Art projects created\nusing Procreate.',
              'home/digital_art.png', '/digital_art'),
          spacerH(50),
          _tileReverse('Me & You', 'Completed\nclient projects',
              'home/meandu.png', '/meandu'),
        ],
      ),
    );
  }

  _tile(String title, String description, String imagePath, String routePath) {
    return GestureDetector(
      onTap: () {
        print('Navigating to $routePath');
        // GoRouter.of(context).go(routePath);
      },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _tileText(title, description),
            spacerW(30),
            HoverImage(imagePath: imagePath),
          ],
        ),
      ),
    );
  }

  _tileReverse(
      String title, String description, String imagePath, String routePath) {
    return GestureDetector(
      onTap: () {
        print('Navigating to $routePath');
        // GoRouter.of(context).go(routePath);
      },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HoverImage(imagePath: imagePath),
            _tileTextReverse(title, description),
            spacerW(80),
          ],
        ),
      ),
    );
  }

  Padding _tileText(String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Text(
                title.toUpperCase(),
                style: AppTypography.homeTile1,
              ),
              spacerW(6),
              Icon(Icons.arrow_forward, color: Colors.white)
            ],
          ),
          Text(description, style: AppTypography.homeTile2),
        ],
      ),
    );
  }

  Padding _tileTextReverse(String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Icon(Icons.arrow_back, color: Colors.white),
              spacerW(6),
              Text(
                title.toUpperCase(),
                style: AppTypography.homeTile1,
              ),
            ],
          ),
          Text(description, style: AppTypography.homeTile2),
        ],
      ),
    );
  }
}
