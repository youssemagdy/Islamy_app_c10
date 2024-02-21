import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy_app/style/app_theme.dart';
import 'package:islamy_app/ui/ahadeth_details/ahadth_details.dart';
import 'package:islamy_app/ui/home/taps/home_screen_islamy.dart';
import 'package:islamy_app/ui/home/quran_details/quran_deteils_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      title: 'Islamy',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      locale: const Locale('ar'),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: AppTheme.isDark?ThemeMode.dark:ThemeMode.light,
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
