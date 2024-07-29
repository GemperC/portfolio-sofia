import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sofia_portfolio/core/theme/typography.dart';
import 'package:sofia_portfolio/src/ui/widgets/custom_page_widget.dart';
import 'package:sofia_portfolio/src/ui/widgets/hover_image.dart';
import 'package:sofia_portfolio/src/ui/widgets/spacer.dart';
import 'package:sofia_portfolio/src/utils/screen_size.dart';

class PhotographyPage extends StatefulWidget {
  const PhotographyPage({super.key});

  @override
  State<PhotographyPage> createState() => _PhotographyPageState();
}

class _PhotographyPageState extends State<PhotographyPage> {
  @override
  Widget build(BuildContext context) {
    print(context.width);

    return CustomPageWidget(
      title: "Photography",
      routePath: "/photography",
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  HoverImage(
                    imagePath: 'assets/human_thumb.png',
                    size: ScreenInfo(context).scaler(170, limit: 1000),
                    onTap: () {
                      context.go('/photography/human');
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("To be human".toUpperCase(),
                        style: AppTypography.photographyImageText.copyWith(
                            fontSize:
                                ScreenInfo(context).scaler(20, limit: 1000),
                            color: Colors.black)),
                  ),
                ],
              ),
              spacerW(10),
              Image.asset(
                'assets/1.png',
                height: ScreenInfo(context).scaler(170, limit: 1000),
              ),
            ],
          ),
          spacerH(10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/2.png',
                height: ScreenInfo(context).scaler(170, limit: 1000),
              ),
              spacerW(10),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  HoverImage(
                    onTap: () {
                      context.go('/photography/flora');
                    },
                    imagePath: 'assets/flora_thumb.png',
                    size: ScreenInfo(context).scaler(170, limit: 1000),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Flora".toUpperCase(),
                        style: AppTypography.photographyImageText.copyWith(
                          fontSize: ScreenInfo(context).scaler(20, limit: 1000),
                        )),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
