import 'package:flutter/material.dart';

import 'utils.dart';

class NavigationButton extends StatefulWidget {
  final IconData _icon;
  final Color? _colorIcon;
  final NavigationButtonTapCallback _onTapInternalButton;
  final NavigationButtonTapCallback _onTapExternalButton;
  final IconData? activeIcon;

   NavigationButton(this._icon, this._colorIcon, this._onTapInternalButton,
      this._onTapExternalButton,
      {Key? key, this.activeIcon})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NavigationButtonState createState() => _NavigationButtonState();
}

class _NavigationButtonState extends State<NavigationButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  double _opacityIcon = 1;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 200));
    _scaleAnimation = Tween<double>(begin: 1, end: 0.93).animate(_controller);
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTapDown: (_) {
        _controller.forward();
        setState(() {
          _opacityIcon = 0.5;
        });
      },
      onTapUp: (_) {
        _controller.reverse();
        setState(() {
          _opacityIcon = 1;
        });
      },
      onTapCancel: () {
        _controller.reverse();
        setState(() {
          _opacityIcon = 1;
        });
      },
      onTap: () {
        widget._onTapInternalButton();
        widget._onTapExternalButton();
      },
      child: ScaleTransition(
          scale: _scaleAnimation,
          child: AnimatedOpacity(
              opacity: _opacityIcon,
              duration: Duration(milliseconds: 400),
              child: Icon(widget._icon, color: widget._colorIcon))));
}
