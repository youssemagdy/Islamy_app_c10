import 'package:flutter/material.dart';
import 'package:islamy_app/ui/home/taps/language_sheet.dart';
import 'package:islamy_app/ui/home/taps/theme_sheet.dart';
import 'package:provider/provider.dart';
import '../../../provider/setting_provider.dart';
// TODO STOPET HERE IN 12:00

class SettingWidget extends StatefulWidget {
  const SettingWidget({Key? key}) : super(key: key);
  @override
  State<SettingWidget> createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget> {
  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of<SettingProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Language', style: TextStyle(fontSize: 20),),
          const SizedBox(height: 10,),
          InkWell(
            onTap: () {
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
              child: Text(
                provider.language == 'ar'?'العربية':'English',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          const Text('Theme', style: TextStyle(fontSize: 20),),
          const SizedBox(height: 10,),
          InkWell(
            onTap: () {
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
              child: Text(
                provider.theme == ThemeMode.dark?'Dark':'Light',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
              ),
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
