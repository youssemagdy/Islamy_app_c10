import 'package:flutter/material.dart';

class LanguageSheet extends StatefulWidget {
  const LanguageSheet({Key? key}) : super(key: key);
  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem('English'),
          const SizedBox(height: 15,),
          getUnselectedItem('العربية'),
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
