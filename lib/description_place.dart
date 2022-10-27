import 'package:flutter/material.dart';
import 'package:flutter_project_platzi/star.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final double stars;
  final String descriptionPlace;

  const DescriptionPlace(
      {super.key,
      required this.descriptionPlace,
      required this.namePlace,
      required this.stars});

  @override
  Widget build(BuildContext context) {
    final description = Container(
      margin: const EdgeInsets.only(
        top: 20,
        right: 20,
        left: 20,
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontFamily: 'Silkscreen',
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: Colors.black54,
        ),
        textAlign: TextAlign.left,
      ),
    );

    final titleStars = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 320,
            left: 20,
            right: 20,
          ),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        starsWidget(stars),
      ],
    );

    final allContent = Column(
      children: [titleStars, description],
    );

    return allContent;
  }
}
