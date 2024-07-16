import 'package:flutter/material.dart';
import 'package:sofia_portfolio/src/utils/screen_size.dart';

class HoverImage extends StatefulWidget {
  final String imagePath;
  final double size;
  double? hoverSize;

  HoverImage({required this.imagePath, this.size = 0.4, this.hoverSize});

  @override
  _HoverImageState createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    widget.hoverSize = widget.size + widget.size / 10;

    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 120),
        width: _isHovered ? widget.hoverSize : widget.size,
        height: _isHovered ? widget.hoverSize : widget.size,
        child: ColorFiltered(
          colorFilter: _isHovered
              ? ColorFilter.mode(Colors.transparent, BlendMode.multiply)
              : ColorFilter.matrix(_greyscaleMatrix),
          child: Image.asset(widget.imagePath),
        ),
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }

  static const List<double> _greyscaleMatrix = <double>[
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ];
}
