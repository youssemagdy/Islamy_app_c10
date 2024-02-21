import 'package:flutter/material.dart';
import 'package:islamy_app/style/app_theme.dart';
import 'package:islamy_app/ui/home/ahadth_model.dart';

class AgadethDetailsScreen extends StatelessWidget
{
  static const String routeName = 'AgadethDetailsScreen';
  const AgadethDetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    AhadthModel ahadthModel = ModalRoute.of(context)?.settings.arguments as AhadthModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppTheme.isDark?'assets/image/dark_bg.png':'assets/image/default_bg.png',
              ),
              fit: BoxFit.fill
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(ahadthModel.title),
        ),
        body: Column(
          children: [
            Expanded(
              child: Card(
                // TODO AHADES DEDALIS SCREEN
                child: SingleChildScrollView(
                  child: Text(
                    ahadthModel.content,
                    style: Theme.of(context).textTheme.bodyMedium,
                   ),
                ),
                ),
            ),
          ],
        ),
        ),
      );
  }
}
