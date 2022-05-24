import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_image_keybord/home_page.dart';

void main() {
  runApp(ProviderScope(child: MyApp()),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "practice image keybord",
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
