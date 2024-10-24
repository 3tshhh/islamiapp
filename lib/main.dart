import 'package:flutter/material.dart';
import 'package:islamiapp/Pages/hadethPage.dart';
import 'package:islamiapp/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold
          ),
          bodyMedium: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w400
          ),
          titleMedium: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w500
          ),
          titleLarge: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,


          ),
        ),
        dividerTheme: const DividerThemeData(
          color: Color(0xFFB7935F),
          thickness: 3
        ),
        scaffoldBackgroundColor: Colors.transparent,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: const Color(0xFFB7935F),
          secondary: const Color(0xFFB7935F).withOpacity(0.57),
          onPrimary: Colors.white,
          onSecondary: Colors.black ,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xffB7935F),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
            size: 25
          ),
          selectedIconTheme: IconThemeData(
            size: 45
          )
        )

      ),
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        HadethPage.routeName: (_) => HadethPage(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
