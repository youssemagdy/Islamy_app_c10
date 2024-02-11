import 'package:flutter/material.dart';
import 'package:islamy_app/ui/ahadeth_details/ahadth_details.dart';
import 'package:islamy_app/ui/home/home_screen_islamy.dart';
import 'package:islamy_app/ui/home/quran_details/quran_deteils_screen.dart';

void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islamy',
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFFB7935f),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 30,
          ),
          unselectedIconTheme: IconThemeData(
              size: 20
          ),
        ),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFB7935f),
          primary: const Color(0xFFB7935f),
          secondary: const Color(0xFFC9b396),
          onPrimary: Colors.white,
          onSecondary: Colors.black,
        ),
        useMaterial3: true,
      ),
      initialRoute: HomeScreenIslamy.routName,
      routes:
      {
        HomeScreenIslamy.routName: (_) => HomeScreenIslamy(),
        QuranDetailsScreen.routeName: (_) => QuranDetailsScreen(),
        AgadethDetailsScreen.routeName: (_) => AgadethDetailsScreen(),
      },
    );
  }
}
