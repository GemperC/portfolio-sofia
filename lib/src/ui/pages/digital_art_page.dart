import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sofia_portfolio/core/theme/typography.dart';
import 'package:sofia_portfolio/src/ui/widgets/back_button.dart';
import 'package:sofia_portfolio/src/ui/widgets/custom_page_widget.dart';
import 'package:sofia_portfolio/src/ui/widgets/hover_image.dart';
import 'package:sofia_portfolio/src/ui/widgets/social_media_line.dart';
import 'package:sofia_portfolio/src/ui/widgets/spacer.dart';
import 'package:sofia_portfolio/src/utils/screen_size.dart';

class DigitalArtPage extends StatelessWidget {
  const DigitalArtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
        title: "Digital art",
        assetPath: "digital_art/digital_art.png",
        routePath: "/digital-art");
  }
}
