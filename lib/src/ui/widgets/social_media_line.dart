import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sofiaxima/core/theme/typography.dart';
import 'package:sofiaxima/src/ui/widgets/spacer.dart';
import 'package:sofiaxima/src/utils/screen_size.dart';
import 'dart:html' as html;

class SocialMedialine extends StatefulWidget {
  const SocialMedialine({super.key});

  @override
  State<SocialMedialine> createState() => _SocialMedialineState();
}

class _SocialMedialineState extends State<SocialMedialine> {
  double sofiaximaTextSize = 7.5;

  double socialLinksTextSize = 7.5;

  double iconInitialSize = 8;

  double paddingScaler = 4;

  _webSizes() {
    setState(() {
      sofiaximaTextSize = 7.5;

      socialLinksTextSize = 7.5;

      iconInitialSize = 8;

      paddingScaler = 4;
    });
  }

  _phoneSizes() {
    setState(() {
      sofiaximaTextSize = 9;

      socialLinksTextSize = 9;

      iconInitialSize = 8;

      paddingScaler = 4;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isWeb = context.width > 600;
    isWeb ? _webSizes() : _phoneSizes();
    return isWeb ? _webWidget(context) : _phoneWidget(context);
  }

  _phoneWidget(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("@SOFIAXIMA.ART",
            style: AppTypography.socialMediaLine.copyWith(
              fontSize: sofiaximaTextSize.scaler(context),
            )),
        spacerH(20),
        _socialMediaLineWeb(context),
        spacerH(20),
      ],
    );
  }

  _webWidget(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("@SOFIAXIMA.ART",
            style: AppTypography.socialMediaLine.copyWith(
              fontSize: sofiaximaTextSize.scaler(context),
            )),
        spaceTaker(),
        _socialMediaLineWeb(context),
        spacerH(60),
      ],
    );
  }

  _SocialMediaLinePhone(BuildContext context) {
    final double space = 1.scaler(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        spacerW(space),
        _socialMediaButton(
            'LinkedIn',
            'https://www.linkedin.com/in/sofia-ruth-michanie-22ba19242/',
            context),
        spacerW(space),
        _devider(context),
        spacerW(space),
        _socialMediaButton(
            'Youtube', 'https://www.youtube.com/@Sofiaxima', context),
        spacerW(space),
        _devider(context),
        spacerW(space),
        _socialMediaButton(
            'ETSY',
            'https://www.etsy.com/shop/Cinnamoneyez?ref=dashboard-header',
            context),
        spacerW(space),
        _devider(context),
        spacerW(space),
        _socialMediaButton('Pintrest', 'https://pin.it/XPMhivbGz', context),
        spacerW(space),
        _devider(context),
        spacerW(space),
        _socialMediaButton(
            'Instagram', 'https://www.instagram.com/sofiaxima/', context),
      ],
    );
  }

  _socialMediaLineWeb(BuildContext context) {
    final double space = 3.scaler(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        spacerW(space),
        _socialMediaButton(
            'LinkedIn',
            'https://www.linkedin.com/in/sofia-ruth-michanie-22ba19242/',
            context),
        spacerW(space),
        _devider(context),
        spacerW(space),
        _socialMediaButton(
            'Youtube', 'https://www.youtube.com/@Sofiaxima', context),
        spacerW(space),
        _devider(context),
        spacerW(space),
        _socialMediaButton(
            'ETSY',
            'https://www.etsy.com/shop/Cinnamoneyez?ref=dashboard-header',
            context),
        spacerW(space),
        _devider(context),
        spacerW(space),
        _socialMediaButton('Pintrest', 'https://pin.it/XPMhivbGz', context),
        spacerW(space),
        _devider(context),
        spacerW(space),
        _socialMediaButton(
            'Instagram', 'https://www.instagram.com/sofiaxima/', context),
      ],
    );
  }

  _socialMediaButton(String name, String url, BuildContext context) {
    return GestureDetector(
      onTap: () async {
        print('Navigating to $url');
        html.window.open(url, 'new tab');
      },
      child: Container(
        color: Colors.black,
        padding: EdgeInsets.all(paddingScaler.scaler(context)),
        child: Row(
          children: <Widget>[
            Text(name.toUpperCase(),
                style: AppTypography.socialMediaLine.copyWith(
                  fontSize: socialLinksTextSize.scaler(context),
                )),
            spacerW(5),
            Icon(
              Icons.arrow_outward_rounded,
              color: Colors.white,
              size: iconInitialSize.scaler(context),
            )
          ],
        ),
      ),
    );
  }

  _devider(BuildContext context) {
    return Container(
      height: ScreenInfo(context).scaler(20, limit: 700),
      //     20.scaler(context),
      width: ScreenInfo(context).scaler(0.6, limit: 700),
      //0.6.scaler(context),
      color: const Color.fromARGB(76, 158, 158, 158),
    );
  }
}
