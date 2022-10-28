import 'package:flutter/material.dart';
import 'package:flutter_project_platzi/description_place.dart';
import 'package:flutter_project_platzi/gradiend_back.dart';
import 'package:flutter_project_platzi/review_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String namePlace = "G. ALVICOM";
    double starsPlace = 4.8;
    String descriptionPlace =
        "Empresa contratista orientada a telecomunicaciones e inversor de proyectos de software en el área de minería";

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Column(
          children: [
            const GradientBack(),
            Expanded(
              child: ListView(
                children: [
                  DescriptionPlace(
                    descriptionPlace: descriptionPlace,
                    namePlace: namePlace,
                    stars: starsPlace,
                  ),
                  ReviewList()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
