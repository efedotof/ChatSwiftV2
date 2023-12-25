import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'AllCommunication.dart';
import 'CommunicationCard.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Community', style: TextStyle(color: Color(0xFF6A649D), fontSize: 20,),),
                GestureDetector(onTap: (){
                   Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: AllCommunication(),
                        isIos: true,
                        duration: Duration(milliseconds: 1600)));
                },child: Icon(Icons.arrow_forward_ios, color: Color(0xFF5B5A8A),)),
          
                
          
          
          
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                    children: List.generate(3, (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CommunicationCards(),
                    )),
                  ),
            ),
          )

        ],
      ),

    );
  }
}