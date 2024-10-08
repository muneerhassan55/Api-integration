import 'package:apis_integration/home_page.dart';
import 'package:apis_integration/home_page2.dart';
import 'package:apis_integration/product_model_Api_integration.dart';
import 'package:apis_integration/user_model_api_integration.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ProductModelApiIntegration());
  }
}
