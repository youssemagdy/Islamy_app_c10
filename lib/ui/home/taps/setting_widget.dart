import 'package:flutter/material.dart';
import 'package:islamy_app/ui/home/taps/language_sheet.dart';
import 'package:islamy_app/ui/home/taps/theme_sheet.dart';

class SettingWidget extends StatefulWidget {
  const SettingWidget({Key? key}) : super(key: key);
  @override
  State<SettingWidget> createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Language', style: TextStyle(fontSize: 20),),
          const SizedBox(height: 10,),
          InkWell(
            onTap: ()
            {
              showLanguageBottomSheet();
            },
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              child: const Text(
                  'English',
                  style: TextStyle(
                      fontSize: 16
                  ),
                )
            ),
          ),
          const SizedBox(height: 20,),
          const Text('Theme', style: TextStyle(fontSize: 20),),
          const SizedBox(height: 10,),
          InkWell(
            onTap: ()
            {
              showThemeBottomSheet();
            },
            child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                child: const Text(
                  'Light',
                  style: TextStyle(
                      fontSize: 16
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet()
  {
    showModalBottomSheet(context: context, builder: (context)
    {
      return ThemeSheet();
    });
  }

  void showLanguageBottomSheet()
  {
    showModalBottomSheet(context: context, builder: (context)
    {
      return LanguageSheet();
    });
  }
}
