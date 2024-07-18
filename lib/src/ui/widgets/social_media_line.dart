import 'package:flutter/material.dart';
import 'package:sofia_portfolio/core/theme/typography.dart';
import 'package:sofia_portfolio/src/ui/widgets/spacer.dart';

class SocialMedialine extends StatelessWidget {
  const SocialMedialine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("☻@SOFIAXIMA.ART", style: AppTypography.socialMediaLine),
        spaceTaker(),
        _socialMediaLine(),
        spacerH(60),
      ],
    );
  }

  _socialMediaLine() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        spacerW(10),
        _socialMediaButton('LinkedIn', 'https://www.linkedin.com/in/sofia/'),
        spacerW(10),
        _devider(),
        spacerW(10),
        _socialMediaButton('Youtube', 'https://twitter.com/sofia/'),
        spacerW(10),
        _devider(),
        spacerW(10),
        _socialMediaButton('ETSY', 'https://www.linkedin.com/in/sofia/'),
        spacerW(10),
        _devider(),
        spacerW(10),
        _socialMediaButton('Pintrest', 'https://www.linkedin.com/in/sofia/'),
        spacerW(10),
        _devider(),
        spacerW(10),
        _socialMediaButton('Instagram', 'https://www.instagram.com/sofia/'),
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
            Text(name.toUpperCase(), style: AppTypography.socialMediaLine),
            spacerW(10),
            Icon(
              Icons.arrow_outward_rounded,
              color: Colors.white,
              size: 15,
            )
          ],
        ),
      ),
    );
  }

  _devider() {
    return Container(
      height: 20,
      width: 0.6,
      color: const Color.fromARGB(76, 158, 158, 158),
    );
  }
}
