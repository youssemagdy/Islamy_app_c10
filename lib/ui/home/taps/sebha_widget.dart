import 'dart:math';

import 'package:flutter/material.dart';

class SabhaWidget extends StatefulWidget {
  const SabhaWidget({Key? key}) : super(key: key);

  @override
  State<SabhaWidget> createState() => _TasbeehState();
}

class _TasbeehState extends State<SabhaWidget> {
  int counter = 0;
  int index = 0;
  double angle = 0;
  List<String> doaa =
  [
    'الله واكبر','سبحان الله','لا لله الا لله','الحمد لله','اسغفر الله العظيم'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset('assets/image/head_sebha_logo.png', height: 100,),
              ),
            ),
            GestureDetector(
              onTap: (){
                counterTasabeh();
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 73),
                child: Align(
                  alignment: Alignment.center,
                  child: Transform.rotate(
                    angle: angle,
                    child: Image.asset('assets/image/body_sebha_logo.png'))
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 50,),
        const Text('Counter Tasabeeh', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFFC9B396),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(counter.toString(), style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400),),
        ),
        const SizedBox(height: 5,),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(0xFFB7935F),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(doaa[index], style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),),
        ),
      ],
    );
  }
  counterTasabeh(){
    angle += 50;
    if (counter == 33){
      counter = 0;
      if (index < doaa.length - 1){
        index ++;
      }
      else{
        index = 0;
      }
    }
    else{
      counter ++;
    }
    setState(() {});
  }
}
