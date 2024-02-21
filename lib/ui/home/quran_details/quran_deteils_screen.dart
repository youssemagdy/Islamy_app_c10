import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/style/app_theme.dart';

class QuranDetailsScreen extends StatefulWidget
{
  static const String routeName = 'QuranDetailsScreen';

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context)
  {
    QuranDetailsArgs args = ModalRoute.of(context)?.settings.arguments as QuranDetailsArgs;
    if (lines.isEmpty)
    {
      readQuranFile(args.index);
    }
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
          title: Text(args.title),
        ),
        body: Card(
          // TODO Qu details Screen
          child: lines.isNotEmpty ?
          ListView.separated(
              itemBuilder: (context, index) => Text(
                '${lines[index]} (${index + 1})',
                textDirection: TextDirection.rtl,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              separatorBuilder: (context, index) => Container(
                height: 2,
                color: Theme.of(context).dividerColor,
              ),
              itemCount: lines.length
          ) :
          const Center(
             child: CircularProgressIndicator(),
            ),
          ),
        ),
      );
  }

  List<String> lines = [];

  void readQuranFile(int index) async
  {
     String quranText = await rootBundle.loadString('assets/files/${index + 1}.txt');
     print(quranText);
     lines = quranText.split('\n');
     print(quranText);
     setState(()
     {

     });
  }
}

class QuranDetailsArgs
{
  String title;
  int index;
  QuranDetailsArgs(this.title, this.index);
}