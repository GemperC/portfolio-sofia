import 'package:flutter/material.dart';
import 'package:sofia_portfolio/core/theme/typography.dart';
import 'package:sofia_portfolio/src/ui/widgets/back_button.dart';
import 'package:sofia_portfolio/src/ui/widgets/hover_image.dart';
import 'package:sofia_portfolio/src/ui/widgets/social_media_line.dart';
import 'package:sofia_portfolio/src/ui/widgets/spacer.dart';
import 'package:sofia_portfolio/src/utils/screen_size.dart';

class CustomPageWidget extends StatelessWidget {
  const CustomPageWidget(
      {super.key,
      required this.title,
      this.assetPath,
      required this.routePath,
      this.body});
  final String title;
  final String? assetPath;
  final String routePath;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    print(context.width);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CustomBackButton(),
              _header(context),
              body ?? _image(context),
              spacerH(200),
              SocialMedialine(),
            ],
          ),
        ),
      ),
    );
  }

  _header(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 70.0),
            child: Text(
              title.toUpperCase(),
              style: AppTypography.homeHeader
                  .copyWith(fontSize: 20.scaler(context)),
            ),
          ),
          // RotatedBox(
          //   quarterTurns: 1,
          //   child: Image.asset('home/catapilar.png', width: 60),
          // ),
        ],
      ),
    );
  }

  _image(BuildContext c) {
    return Image.asset(assetPath!,
        width: ScreenInfo(c).scaler(500, limit: 1000));
  }
}
