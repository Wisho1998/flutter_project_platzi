import 'package:flutter/material.dart';
import 'package:flutter_project_platzi/description_place.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    String namePlace = "G. ALVICOM";
    double stars = 4.8;
    String descriptionPlace =
        "Empresa contratista orientada a telecomunicaciones e inversor de proyectos de software en el área de minería";
    return DescriptionPlace(
      descriptionPlace: descriptionPlace,
      namePlace: namePlace,
      stars: stars,
    );
  }
}
