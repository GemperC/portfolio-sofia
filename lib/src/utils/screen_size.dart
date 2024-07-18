import 'package:flutter/material.dart';

class ScreenInfo {
  final BuildContext context;

  ScreenInfo(this.context);

  double get height => MediaQuery.of(context).size.height;
  double get width => MediaQuery.of(context).size.width;

  double scaler(double value, {double? limit}) {
    print("scale for $value : ${width / (600 / value)}");
    double scaledValue = width / (600 / value);
    if (limit == null) {
      return width > 600 ? scaledValue : value;
    } else {
      return width > limit
          ? limit / (600 / value)
          : width > 600
              ? scaledValue
              : value;
    }
  }
}

extension SizeGetter on BuildContext {
  MediaQueryData get _mediaQueryData => MediaQuery.of(this);

  double get height => _mediaQueryData.size.height;
  double get width => _mediaQueryData.size.width;
}

extension ScalerExtensionDouble on double {
  double scaler(BuildContext context) {
    return ScreenInfo(context).scaler(this);
  }
}

extension ScalerExtensionInt on int {
  double scaler(BuildContext context) {
    return ScreenInfo(context).scaler(this.toDouble());
  }
}
