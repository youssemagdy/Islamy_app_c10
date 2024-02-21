import 'package:flutter/material.dart';
import 'package:islamy_app/ui/ahadeth_details/ahadth_details.dart';
import 'package:islamy_app/ui/home/ahadth_model.dart';

class AhadethTitleItem extends StatelessWidget
{
  AhadthModel ahadeth;

  AhadethTitleItem ({Key? key, required this.ahadeth}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      onTap: ()
      {
        Navigator.pushNamed(context, AgadethDetailsScreen.routeName,arguments: ahadeth);
      },
      child: Text(
        ahadeth.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.labelMedium,
      ),
    );
  }
}
