import 'package:bnk_bible/pages/alpha_page.dart';
import 'package:bnk_bible/pages/list_lagu.dart';
import 'package:bnk_bible/pages/profil_page.dart';
import 'package:bnk_bible/providers/alkitab_prov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final bool isDark = false;

  final ThemeData dark = ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor: Color(0xffEB455F)));

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Alkitabs(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.amber,
            primarySwatch: Colors.amber,
            iconButtonTheme: const IconButtonThemeData(
                style: ButtonStyle(
                    iconColor: MaterialStatePropertyAll(Color(0xff2B3467)))),
            textTheme: const TextTheme(
              bodyLarge: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 24,
                  color: Color(0xffEB455F),
                  fontWeight: FontWeight.w900),
              bodyMedium: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  color: Color(0xff2B3467),
                  fontWeight: FontWeight.w900),
              bodySmall: TextStyle(
                  fontFamily: 'Roboto', fontSize: 12, color: Colors.black),
            ),
            floatingActionButtonTheme: const FloatingActionButtonThemeData(
                backgroundColor: Colors.amber),
            outlinedButtonTheme: OutlinedButtonThemeData(
                style: OutlinedButton.styleFrom(
                    textStyle: const TextStyle(color: Colors.amber),
                    side: const BorderSide(color: Colors.red, width: 10))),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    textStyle:
                        const TextStyle(color: Colors.amber, fontSize: 24),
                    backgroundColor: Colors.blueAccent))),
        debugShowCheckedModeBanner: false,
        home: const AlphaPage(),
        routes: {
          '/alphapage': (context) => const AlphaPage(),
          '/profilepage': (context) => const ProfilPage(),
          '/listpage': (context) => const ListPage()
        },
      ),
    );
  }
}
