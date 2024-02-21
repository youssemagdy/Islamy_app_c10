import 'package:flutter/material.dart';
import 'package:islamy_app/ui/home/quran_details/quran_deteils_screen.dart';

class QuranTitleWidget extends StatelessWidget
{
  String title;
  String verseNumber;
  int index;
  QuranTitleWidget({Key? key, required this.title, required this.verseNumber, required this.index})
  : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()
      {
        Navigator.pushNamed(context, QuranDetailsScreen.routeName, arguments: QuranDetailsArgs(title, index));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:
        [
          Text(title, style: Theme.of(context).textTheme.labelMedium,),
          Text(verseNumber, style: Theme.of(context).textTheme.labelMedium,),
        ],
      ),
    );
  }
}
