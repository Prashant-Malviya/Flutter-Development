import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//Types of widgets
//1. StatelessWidgets : state doesn't change
//2. Statefulwidgets : state change
//3. InheritedWidgets

//1. Material Design

//2. Cupertino Design

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CurrencyConverterMaterialPage());
  }
}
