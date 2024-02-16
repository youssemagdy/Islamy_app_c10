import 'package:flutter/material.dart';

class ThemeSheet extends StatefulWidget {
  const ThemeSheet({Key? key}) : super(key: key);
  @override
  State<ThemeSheet> createState() => _ThemeSheetState();
}

class _ThemeSheetState extends State<ThemeSheet> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getSelectedItem('Light'),
          const SizedBox(height: 15,),
          getUnselectedItem('Dark'),
        ],
      ),
    );
  }

  Widget getSelectedItem(String theme1)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          theme1,
          style: TextStyle(
            fontSize: 20,
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(Icons.check, color: Theme.of(context).primaryColor,),
      ],
    );
  }

  Widget getUnselectedItem(String theme2)
  {
    return Text(theme2, style: const TextStyle(fontSize: 18),);
  }
}
