import 'package:flutter/material.dart';
import 'package:islamy_app/provider/setting_provider.dart';
import 'package:provider/provider.dart';

class LanguageSheet extends StatefulWidget {
  const LanguageSheet({Key? key}) : super(key: key);
  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of<SettingProvider>(context);
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem(provider.language == 'ar' ? 'العربية' : 'English'),
          const SizedBox(height: 15,),
          InkWell(
            onTap: (){
              Navigator.pop(context);
              provider.changeLanguage(provider.language == 'ar' ? 'en' : 'ar');
            },
              child: getUnselectedItem(provider.language == 'ar' ? 'English' : 'العربية'),
          ),
        ],
      ),
    );
  }

  Widget getSelectedItem(String language1)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(language1, style: Theme.of(context).textTheme.labelLarge,),
        Icon(Icons.check, color: Theme.of(context).dividerColor,),
      ],
    );
  }

  Widget getUnselectedItem(String language2)
  {
    return Text(language2, style: Theme.of(context).textTheme.labelSmall,);
  }
}
