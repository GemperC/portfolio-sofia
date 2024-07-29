import 'package:flutter/material.dart';
import 'package:sofia_portfolio/src/ui/widgets/custom_page_widget.dart';

class FloraPage extends StatelessWidget {
  const FloraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
        title: "flora",
        assetPath: "assets/flora.png",
        routePath: "/photography/flora");
  
  }
}
