import 'package:flutter/material.dart';

import 'core/app_theme.dart';

/// Point d'entrée de l'application « App de César ».
void main() {
  runApp(const CesarApp());
}

/// Racine de l'application.
class CesarApp extends StatelessWidget {
  /// Crée la racine de l'application.
  const CesarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App de César",
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const HomeScreen(),
    );
  }
}

/// Page unique de l'application : un message de bienvenue centré.
class HomeScreen extends StatelessWidget {
  /// Crée la page d'accueil.
  const HomeScreen({super.key});

  /// Message affiché au centre de la page.
  static const String greeting = "hello vous dans l'app de César";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            greeting,
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
