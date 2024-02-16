import 'package:flutter/material.dart';
import 'package:islamy_app/style/app_theme.dart';
import 'package:islamy_app/ui/ahadeth_details/ahadth_details.dart';
import 'package:islamy_app/ui/home/home_screen_islamy.dart';
import 'package:islamy_app/ui/home/quran_details/quran_deteils_screen.dart';

void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islamy',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      // Navigate
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
