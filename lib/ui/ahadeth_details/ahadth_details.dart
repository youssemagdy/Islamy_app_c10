import 'package:flutter/material.dart';
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
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/image/default_bg.png',
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
                margin: const EdgeInsets.all(20),
                elevation: 20,
                child: SingleChildScrollView(
                  child: Text(
                    ahadthModel.content,
                    style: const TextStyle(fontSize: 19),
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
