import 'package:flutter/material.dart';
import 'package:islamy_app/ui/home/ahadth_model.dart';

class AhadethTitleItem extends StatelessWidget
{
  AhadthModel hadeth;

  AhadethTitleItem ({Key? key, required this.hadeth}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Text(
      hadeth.title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 18,
      ),
    );
  }
}
