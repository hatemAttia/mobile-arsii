import 'package:arsi/feature/src/utils.dart';
import 'package:flutter/material.dart';


class MoonyNavStyle {
  Color activeColor;
  Color color;
  Color indicatorColor;
  Color backgroundColor;

  IndicatorPosition indicatorPosition;
  IndicatorType indicatorType;

  double marginLeft;
  double marginRight;
  double marginBottom;
  double elevation;
  BorderRadius? borderRadius;

  MoonyNavStyle(
      {this.activeColor = Colors.black,
      this.color = Colors.black45,
      this.indicatorPosition = IndicatorPosition.TOP,
      this.indicatorType = IndicatorType.POINT,
      this.indicatorColor = Colors.black,
      this.backgroundColor = Colors.white,
      this.marginBottom = 0,
      this.marginLeft = 0,
      this.marginRight = 0,
      this.elevation = 5,
      this.borderRadius
      });
}
