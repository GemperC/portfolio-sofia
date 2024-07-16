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

class MeAndYouPage extends StatefulWidget {
  const MeAndYouPage({super.key});

  @override
  State<MeAndYouPage> createState() => _MeAndYouPageState();
}

class _MeAndYouPageState extends State<MeAndYouPage> {
  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
        title: "Completed Projects",
        assetPath: "meandu/meandu.png",
        routePath: "/meandu");
  }
}
