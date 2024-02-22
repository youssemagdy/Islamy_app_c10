import 'package:flutter/material.dart';
import 'package:islamy_app/provider/setting_provider.dart';
import 'package:islamy_app/style/app_theme.dart';
import 'package:islamy_app/ui/home/taps/ahadeth_widget.dart';
import 'package:islamy_app/ui/home/taps/quran_widget.dart';
import 'package:islamy_app/ui/home/taps/radio_widget.dart';
import 'package:islamy_app/ui/home/taps/sebha_widget.dart';
import 'package:islamy_app/ui/home/taps/setting_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';


class HomeScreenIslamy extends StatefulWidget
{
  static const String routName = 'HomeScreenIslamy';

  @override
  State<HomeScreenIslamy> createState() => _HomeScreenIslamyState();
}

class _HomeScreenIslamyState extends State<HomeScreenIslamy> {
  int currentNavIndex = 3;
  List<Widget> navWidget =
  [
    RadioWidget(),
    SabhaWidget(),
    AhadethWidget(),
    QuranWidget(),
    SettingWidget(),
  ];
  @override
  Widget build(BuildContext context)
  {
    SettingProvider provider = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                 provider.theme == ThemeMode.dark?'assets/image/dark_bg.png':'assets/image/default_bg.png',
              ),
            fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islami),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentNavIndex,
          onTap: (index)
          {
            setState(()
            {
              currentNavIndex = index;
            });
          },
          items:
          [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(
                  AssetImage(
                    'assets/image/icon_radio.png',
                  )
              ),
              label: AppLocalizations.of(context)!.radio,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(
                  AssetImage(
                    'assets/image/icon_sebha.png',
                  )
              ),
              label: AppLocalizations.of(context)!.sebha,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(
                  AssetImage(
                    'assets/image/icon_hadeth.png',
                  )
              ),
              label: AppLocalizations.of(context)!.ahadeth,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(
                  AssetImage(
                    'assets/image/icon_quran.png',
                  )
              ),
              label: AppLocalizations.of(context)!.quran,
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const Icon(
                    Icons.settings,
              ),
              label: AppLocalizations.of(context)!.setting,
            ),
          ],
        ),
        body: navWidget[currentNavIndex],
      ),
    );
  }
}
