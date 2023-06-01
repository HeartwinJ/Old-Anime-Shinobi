import 'package:anime_shinobi/common/custom_theme.dart';
import 'package:anime_shinobi/components/navgation_wrapper.dart';
import 'package:anime_shinobi/pages/anime_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime Shinobi',
      initialRoute: '/',
      theme: customTheme,
      routes: {
        '/': (context) => const NavigationWrapper(),
        '/anime': (context) => const AnimePage(),
      },
    );
  }
}
