import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: GestureDetector(
        onTap: () {
          print('Navigating to /');
          GoRouter.of(context).go('/');
        },
        child: Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Icon(Icons.arrow_back, color: Colors.white),
              // Text('BACK', style: AppTypography.homeFooter2),
            ],
          ),
        ),
      ),
    );
  }
}
