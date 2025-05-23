import 'package:flutter/material.dart';
import 'ui/pages/home_page.dart';
import 'ui/pages/termos_uso.dart';
import 'ui/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lanchonete da Carminha',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,

      // 🔧 ROTAS REGISTRADAS AQUI
      routes: {
        '/': (context) => HomePage(toggleTheme: toggleTheme),
        '/termos_uso': (context) => const TermosDeUsoPage(),
        // você pode adicionar outras rotas aqui também:
        // '/politicas-de-privacidade': (context) => const PoliticasPage(),
        // '/sobre': (context) => const SobrePage(),
      },
    );
  }
}
