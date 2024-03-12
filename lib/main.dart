// ignore_for_file: prefer_const_constructors

import 'package:arapp/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const eCommerceAR());
}

// ignore: camel_case_types
class eCommerceAR extends StatelessWidget {
  const eCommerceAR({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Augmented Reality with Flutter',
      // theme: const AppTheme().themeData,
      theme: ThemeData.dark(),
      home: SplashScreen(),
      // routes: {
      //   '/product': (context) => ProductWithAugmentedRealityScreen(
      //         product: ModalRoute.of(context)!.settings.arguments as Product,
      //       ),
      // },
    );
  }
}
