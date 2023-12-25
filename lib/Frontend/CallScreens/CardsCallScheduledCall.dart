import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CallScheduledCallCards extends StatefulWidget {
  const CallScheduledCallCards({super.key, required this.isCommunity});

  final bool isCommunity;


  @override
  State<CallScheduledCallCards> createState() => _CallScheduledCallCardsState();
}

class _CallScheduledCallCardsState extends State<CallScheduledCallCards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.height * 0.22,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: Colors.white,
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02, vertical: MediaQuery.of(context).size.height * 0.03),
    
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [

                  widget.isCommunity?
                  Container(
                  width: MediaQuery.of(context).size.width * 0.24,
                  child: Stack(
                    children: [
                      CircleAvatar(radius: 22,backgroundColor: Color(0xFFC38250),),
                      Positioned(left: 22,child: CircleAvatar(radius: 22,backgroundColor: Color(0xFFBB4572),)),
                      Positioned(left: 42,child: CircleAvatar(radius: 22,backgroundColor: Color(0xFF1B1168),))
                
                
                
                    ],
                  ),
                ): CircleAvatar(backgroundColor: Color(0xFF190F64)),
                  const SizedBox(width: 10,),
                  Text('Bruno, Make,...',style: TextStyle(color: Color(0xFF5C578D), fontWeight: FontWeight.bold)),
    
                ],
                
              ),
              const SizedBox(height: 10,),
              Text('Scheduled on', style: TextStyle(color: Color(0xFFE5E4ED)),),
              const SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Color(0xFFE5E1FA),
                ),
                alignment: Alignment.center,
                child: Text('Jul 20.2020, 04:50', style: TextStyle(color: Color(0xFFC1BBE1)),),
              )
    
    
    
    
            ],  
          ),
        ),
      ),
    );
  }
}