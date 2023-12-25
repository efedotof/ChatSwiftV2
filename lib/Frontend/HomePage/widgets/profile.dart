import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../Search/Search.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(width: MediaQuery.of(context).size.width * 0.13, height:  MediaQuery.of(context).size.height * 0.13, decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.yellow),),
                const SizedBox(width: 10,),
                Text('Andreas', style: TextStyle(color: Color(0xFF352E6C), fontWeight: FontWeight.bold, fontSize: 24),)
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
               Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: Search(),
                        isIos: true,
                        duration: Duration(milliseconds: 1600)));

            },
            
            child: Icon(Icons.search, color: Color(0xFF272166),)),
    
        ],
      ),
    );
  }
}