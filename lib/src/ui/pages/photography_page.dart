import 'package:flutter/material.dart';
import 'package:sofia_portfolio/src/ui/widgets/custom_page_widget.dart';
import 'package:sofia_portfolio/src/ui/widgets/hover_image.dart';

class PhotographyPage extends StatefulWidget {
  const PhotographyPage({super.key});

  @override
  State<PhotographyPage> createState() => _PhotographyPageState();
}

class _PhotographyPageState extends State<PhotographyPage> {
  final widgetList = [
    HoverImage(
      imagePath: 'photography/human.png',
      size: 50,
    ),
    Image.asset(
      'photography/1.png',
      height: 50,
    ),
    Image.asset(
      'photography/2.png',
      height: 50,
    ),
    HoverImage(
      imagePath: 'photography/flora.png',
      size: 50,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
      title: "Photography",
      routePath: "/photography",
      body: Container(
        height: MediaQuery.of(context).size.height - 100,
        width: MediaQuery.of(context).size.width - 100,
        child: //make a grid from widgetList
            GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10),
          children: widgetList,
        ),
      ),
    );
  }
}
