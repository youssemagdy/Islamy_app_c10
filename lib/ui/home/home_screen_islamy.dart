import 'package:flutter/material.dart';
import 'package:islamy_app/ui/home/taps/ahadeth_widget.dart';
import 'package:islamy_app/ui/home/taps/quran_widget.dart';
import 'package:islamy_app/ui/home/taps/radio_widget.dart';
import 'package:islamy_app/ui/home/taps/sebha_widget.dart';

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
  ];
  @override
  Widget build(BuildContext context)
  {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                'assets/image/default_bg.png',
              ),
            fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Islamy',
          ),
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
              label: 'Radio',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(
                  AssetImage(
                    'assets/image/icon_sebha.png',
                  )
              ),
              label: 'Sebha',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(
                  AssetImage(
                    'assets/image/icon_hadeth.png',
                  )
              ),
              label: 'Ahadeth',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const ImageIcon(
                  AssetImage(
                    'assets/image/icon_quran.png',
                  )
              ),
              label: 'Quran',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    Icons.settings,
                  )
              ),
              label: 'Setting',
            ),
          ],
        ),
        body: navWidget[currentNavIndex],
      ),
    );
  }
}
