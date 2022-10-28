import 'package:flutter/material.dart';
import 'package:flutter_project_platzi/star.dart';

class Review extends StatelessWidget {
  final String path;
  final String name;
  final String details;
  final String comment;
  final double stars;

  const Review(
      {super.key,
      required this.path,
      required this.name,
      required this.details,
      required this.comment,
      required this.stars});

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(path))),
    );

    final userName = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato",
          color: Colors.black87,
        ),
      ),
    );

    final userDetails = Container(
      margin: const EdgeInsets.only(left: 20, top: 5),
      child: Row(children: [
        Text(
          details,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 13.0,
            fontFamily: "Lato",
            color: Color(0xFFa3a5a7),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 6),
          child: Stars(stars: stars, sizeIcon: 14),
        )
      ]),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(left: 20, top: 5),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontSize: 14.0,
            fontFamily: "Lato",
            fontWeight: FontWeight.w900,
            color: Colors.black87),
      ),
    );

    final userContainer = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userDetails, userComment],
    );

    return Row(
      children: <Widget>[photo, userContainer],
    );
  }
}
