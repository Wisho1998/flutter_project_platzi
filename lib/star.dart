import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final IconData icon;

  const Star({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 322,
        right: 3,
      ),
      child: Icon(
        icon,
        color: Colors.amber,
        size: 18,
      ),
    );
  }
}

Row starsWidget(double stars) {
  List<Widget> starWidgets = [];

  const limitLenStars = 5;
  double decimal = stars - stars.truncate();
  int integer = stars.truncate();

  const starFilled = Star(icon: Icons.star);
  const starHalf = Star(icon: Icons.star_half);
  const starBorder = Star(icon: Icons.star_border);

  List<Widget> fillerStars = List.filled(integer, starFilled);
  starWidgets.addAll(fillerStars);

  if (decimal >= 0.5) {
    starWidgets.add(starHalf);
  }

  int remaining = limitLenStars - starWidgets.length;
  List<Widget> borderStars = List.filled(remaining, starBorder);

  starWidgets.addAll(borderStars);

  return Row(
    children: starWidgets,
  );
}
