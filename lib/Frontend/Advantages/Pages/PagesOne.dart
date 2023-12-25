// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Center(child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.3,
              child: LottieBuilder.asset('assets/easychats.json'),
            ),
            Text('Easy chat with your friends', style: TextStyle(color:Color(0xFF252265), fontSize: 40, fontWeight: FontWeight.bold ),),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
            Text('Sed ut perspiciatis unde omnis iste natus error sit voluptatern accutantium doloremque', style: TextStyle(color:Color(0xFFDAD7EA), fontSize: 20 ),)
      
          ],
      
      
      
        )),
      ),





    );
  }
}