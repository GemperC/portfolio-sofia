import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sofia_portfolio/core/theme/typography.dart';

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
            children: <Widget>[
              _header(),
              _tiles(),
              _footer(),
            ],
          ),
        ),
      ),
    );
  }

  _header() {
    return Row(
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
    return Stack(
      children: [
        Column(
          children: <Widget>[
            Text(
              'embark on a journey of discovery, seeing the world through a fresh, imaginative lens.'
                  .toUpperCase(),
              style: AppTypography.homeFooter1,
            ),
            Text(
              'By highlighting the unexpected and fantastical elements in nature, I aim to create immersive experiences that resonate both emotionally and intellectually. ',
              style: AppTypography.homeFooter1,
            ),
          ],
        ),
        RotatedBox(
          quarterTurns: 1,
          child: Image.asset('home/catapilar.png',
              width: MediaQuery.of(context).size.width),
        ),
      ],
    );
  }

  _tiles() {
    return Container(
      child: Column(
        children: <Widget>[
          _tile('sketchbook', 'Art projects created\nusing Procreate.',
              'home/sketchbook.png', '/sketchbook'),
          _tile('photography', 'Shot on iphone 11', 'home/photography.png',
              '/photography'),
          _tile('digital_art', 'Art projects created\nusing Procreate.',
              'home/digital_art.png', '/digital_art'),
          _tile('meandu', 'Completed\nclient projects', 'home/meandu.png',
              '/meandu'),
        ],
      ),
    );
  }

  _tile(String title, String description, String imagePath, String routePath) {
    return Container(
      child: Row(
        children: <Widget>[
          _tileText(title, description),
          Image.asset(imagePath, width: 100, height: 100),
        ],
      ),
    );
  }

  Column _tileText(String title, String description) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Text(
              title.toUpperCase(),
              style: AppTypography.homeTile1,
            ),
            Icon(Icons.arrow_forward, color: Colors.white)
          ],
        ),
        Text(
          description,
          style: AppTypography.homeTile2,
        ),
      ],
    );
  }
}
