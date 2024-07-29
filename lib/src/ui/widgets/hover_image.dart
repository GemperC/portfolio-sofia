import 'package:flutter/material.dart';

class HoverImage extends StatefulWidget {
  final String imagePath;
  final double size;
  final double? hoverSize;
  final VoidCallback? onTap;

  HoverImage({
    required this.imagePath,
    this.size = 0.4,
    this.hoverSize,
    this.onTap,
  });

  @override
  _HoverImageState createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final hoverSize = widget.hoverSize ?? widget.size + widget.size / 10;

    return GestureDetector(
      onTapDown: (_) => _onHover(true),
      onTapUp: (_) {
        _onHover(false);
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      onTapCancel: () => _onHover(false),
      child: MouseRegion(
        onEnter: (_) => _onHover(true),
        onExit: (_) => _onHover(false),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 120),
          width: _isHovered ? hoverSize : widget.size,
          height: _isHovered ? hoverSize : widget.size,
          child: ColorFiltered(
            colorFilter: _isHovered
                ? ColorFilter.mode(Colors.transparent, BlendMode.multiply)
                : ColorFilter.matrix(_greyscaleMatrix),
            child: Image.asset(widget.imagePath, fit: BoxFit.cover),
          ),
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
