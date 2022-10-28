import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final IconData icon;
  final double size;

  const Star({
    super.key,
    required this.icon,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.amber,
      size: size,
    );
  }
}

class Stars extends StatelessWidget {
  final double stars;
  final double sizeIcon;

  const Stars({
    super.key,
    required this.stars,
    required this.sizeIcon,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> starWidgets = [];

    const limitLenStars = 5;
    double decimal = stars - stars.truncate();
    int integer = stars.truncate();

    var starFilled = Star(icon: Icons.star, size: sizeIcon);
    var starHalf = Star(icon: Icons.star_half, size: sizeIcon);
    var starBorder = Star(icon: Icons.star_border, size: sizeIcon);

    List<Widget> fillerStars = List.filled(integer, starFilled);
    starWidgets.addAll(fillerStars);

    if (decimal >= 0.5) {
      starWidgets.add(starHalf);
    }

    int remaining = limitLenStars - starWidgets.length;
    List<Widget> borderStars = List.filled(remaining, starBorder);

    starWidgets.addAll(borderStars);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: starWidgets,
    );
  }
}
