
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'AllCommunicationCards.dart';


class AllCommunication extends StatefulWidget {
  const AllCommunication({super.key});

  @override
  State<AllCommunication> createState() => _AllCommunicationState();
}

class _AllCommunicationState extends State<AllCommunication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F4FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Communication List', style: TextStyle(color: Color(0xFF6A6694)),),
        leading: GestureDetector(onTap: (){
           Navigator.pop(context);
        },child: Icon(Icons.arrow_back_ios, color: Color(0xFF6A6694),)),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(10, (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: AllCommunicationCards()),
          )),
        ),
      ),
    );
  }
}