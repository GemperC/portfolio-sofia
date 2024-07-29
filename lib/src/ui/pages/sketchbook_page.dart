import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sofiaxima/core/theme/typography.dart';
import 'package:sofiaxima/src/ui/widgets/back_button.dart';
import 'package:sofiaxima/src/ui/widgets/custom_page_widget.dart';
import 'package:sofiaxima/src/ui/widgets/hover_image.dart';
import 'package:sofiaxima/src/ui/widgets/social_media_line.dart';
import 'package:sofiaxima/src/ui/widgets/spacer.dart';
import 'package:sofiaxima/src/utils/screen_size.dart';

class SketchboookPage extends StatelessWidget {
  const SketchboookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
        title: "Sketchbook",
        assetPath: "assets/sketchbook.png",
        routePath: "/sketchbook");
  }
}


// class SketchboookPage extends StatefulWidget {
//   const SketchboookPage({super.key});

//   @override
//   State<SketchboookPage> createState() => _SketchboookPageState();
// }

// class _SketchboookPageState extends State<SketchboookPage> {
//   @override
//   Widget build(BuildContext context) {
//     print(context.width);

//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               CustomBackButton(),
//               _header(),
//               _image(),
//               spacerH(200),
//               SocialMedialine(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   _socialMediaRow() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         spacerW(20),
//         _socialMediaButton('LinkedIn', 'https://www.linkedin.com/in/sofia/'),
//         spacerW(20),
//         _socialMediaButton('Youtube', 'https://twitter.com/sofia/'),
//         spacerW(20),
//         _socialMediaButton('ETSY', 'https://www.linkedin.com/in/sofia/'),
//         spacerW(20),
//         _socialMediaButton('Pintrest', 'https://www.linkedin.com/in/sofia/'),
//         spacerW(20),
//         _socialMediaButton('Instagram', 'https://www.instagram.com/sofia/'),
//       ],
//     );
//   }

//   _socialMediaButton(String name, String url) {
//     return GestureDetector(
//       onTap: () {
//         print('Navigating to $url');
//         // GoRouter.of(context).go(url);
//       },
//       child: Container(
//         padding: EdgeInsets.all(10),
//         child: Row(
//           children: <Widget>[
//             Text(name.toUpperCase(), style: AppTypography.homeFooter2),
//             spacerW(10),
//             Icon(Icons.arrow_outward_rounded, color: Colors.white)
//           ],
//         ),
//       ),
//     );
//   }

//   _footerLine() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 100.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text("☻@SOFIAXIMA.ART", style: AppTypography.homeFooter2),
//           spaceTaker(),
//           _socialMediaRow(),
//         ],
//       ),
//     );
//   }

//   _header() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 100.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.only(bottom: 20.0),
//             child: Text(
//               'sketchbook'.toUpperCase(),
//               style: AppTypography.homeHeader
//                   .copyWith(fontSize: 20.scaler(context)),
//             ),
//           ),
//           RotatedBox(
//             quarterTurns: 1,
//             child: Image.asset('assets/catapilar.png', width: 60.scaler(context)),
//           ),
//         ],
//       ),
//     );
//   }

//   _footer() {
//     return Container(
//       height: 500,
//       child: Stack(
//         children: [
//           RotatedBox(
//             quarterTurns: 1,
//             child: Align(
//               alignment: Alignment(1, -1),
//               child: Image.asset('assets/catapilar.png',
//                   width: MediaQuery.of(context).size.width * 0.3),
//             ),
//           ),
//           Column(
//             children: <Widget>[
//               Text(
//                 'embark on a journey of discovery, seeing the world through a fresh, imaginative lens.'
//                     .toUpperCase(),
//                 style: AppTypography.homeFooter1,
//               ),
//               Text(
//                 'By highlighting the unexpected and fantastical elements in nature,\nI aim to create immersive experiences that resonate both\nemotionally and intellectually. ',
//                 style: AppTypography.homeFooter2,
//               ),
//               spacerH(200),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   _image() {
//     return Image.asset('assets/sketchbook.png',
//         width: ScreenInfo(context).scaler(400, limit: 1600));
//   }

//   _tile(String title, String description, String imagePath, String routePath,
//       {bool isReverse = false}) {
//     final widgets = <Widget>[
//       _tileText(title, description, isReverse),
//       spacerW(80),
//       HoverImage(imagePath: imagePath, size: 200),
//     ];
//     return GestureDetector(
//       onTap: () {
//         print('Navigating to $routePath');
//         // GoRouter.of(context).go(routePath);
//       },
//       child: Container(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: isReverse ? widgets.reversed.toList() : widgets,
//         ),
//       ),
//     );
//   }

//   Padding _tileText(String title, String description, bool isReverse) {
//     final widgets = [
//       Text(
//         title.toUpperCase(),
//         style: AppTypography.homeTile1,
//       ),
//       spacerW(6),
//       Icon(isReverse ? Icons.arrow_back : Icons.arrow_forward,
//           color: Colors.white)
//     ];
//     return Padding(
//       padding: const EdgeInsets.only(top: 40.0),
//       child: Column(
//         children: [
//           Row(
//             children: isReverse ? widgets.reversed.toList() : widgets,
//           ),
//           Text(description, style: AppTypography.homeTile2),
//         ],
//       ),
//     );
//   }
// }
