import 'package:flutter/material.dart';
import 'package:sofia_portfolio/src/ui/widgets/custom_page_widget.dart';

class HumanPage extends StatelessWidget {
  const HumanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
        title: "To be human",
        assetPath: "photography/human/human.png",
        routePath: "/photography/human");
  }
}
