import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy_app/provider/setting_provider.dart';
import 'package:islamy_app/style/app_theme.dart';
import 'package:islamy_app/ui/ahadeth_details/ahadth_details.dart';
import 'package:islamy_app/ui/home/taps/home_screen_islamy.dart';
import 'package:islamy_app/ui/home/quran_details/quran_deteils_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(ChangeNotifierProvider(
      create: (context) => SettingProvider(),
      child: const MyApp())
  );
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context)
  {
    SettingProvider provider = Provider.of<SettingProvider>(context);
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
      locale: Locale(provider.language),

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: provider.theme,
      // Navigate
      initialRoute: HomeScreenIslamy.routName,
      routes:
      {
        HomeScreenIslamy.routName: (_) => HomeScreenIslamy(),
        QuranDetailsScreen.routeName: (_) => QuranDetailsScreen(),
        AgadethDetailsScreen.routeName: (_) => const AgadethDetailsScreen(),
      },
    );
  }
}
