import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../CallScreens/CardsCall.dart';
import '../../CallScreens/CardsCallScheduledCall.dart';

class ThreeScreen extends StatefulWidget {
  const ThreeScreen({super.key});

  @override
  State<ThreeScreen> createState() => _ThreeScreenState();
}

class _ThreeScreenState extends State<ThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Call history', style: TextStyle(color: Color(0xFF3D3580), fontWeight: FontWeight.bold),),
        elevation: 0,
        backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      ),

      backgroundColor: Color(0xFFF6F4FF),
      body: SingleChildScrollView(


        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Text('Scheduled Call', style: TextStyle(color: Color(0xFF807CB0)),),
            ),
             const SizedBox(height: 20,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(5, (index) => CallScheduledCallCards(isCommunity: true,)),
              ),
            ),
             SizedBox(height: MediaQuery.of(context).size.height * 0.1,),



            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  Column(
                    children: List.generate(10, (index) => CardsCall(isCommunity: true,)),
                  ),
                ],
              ),
            )









          ],
        ),
      ),
       
    );
  }
}