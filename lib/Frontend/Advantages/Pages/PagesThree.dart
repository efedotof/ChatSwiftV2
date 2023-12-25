import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
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
              child: LottieBuilder.asset('assets/notified.json'),
            ),
            Text('Get notified when someone chat your', style: TextStyle(color:Color(0xFF252265), fontSize: 40, fontWeight: FontWeight.bold ),),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
            Text('Sed ut perspiciatis unde omnis iste natus error sit voluptatern accutantium doloremque', style: TextStyle(color:Color(0xFFDAD7EA), fontSize: 20 ),)
      
          ],
      
      
      
        )),
      ),





    );
  }
}