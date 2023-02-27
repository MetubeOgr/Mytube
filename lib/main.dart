import 'package:flutter/material.dart';
import 'package:mytubr/src/shared/styles/app_typography.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      showSemanticsDebugger: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome \nto best video app in wolrd',
                style: AppTypography.data.displayLarge,
                textAlign: TextAlign.center,
              ),
              Text(
                'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. \nectus curabitur cursus arcu mollis commodo fringilla.',
                style: AppTypography.data.bodySmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
