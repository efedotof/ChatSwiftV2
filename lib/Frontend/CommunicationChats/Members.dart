import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'AllContactsCards.dart';
import 'AvatarToCommunityMembers.dart';

class Members extends StatefulWidget {
  const Members({super.key});

  @override
  State<Members> createState() => _MembersState();
}

class _MembersState extends State<Members> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0,
        backgroundColor:Colors.transparent,
        leading: GestureDetector( onTap: (){
              Navigator.pop(context);


            },child: Icon(Icons.arrow_back_ios, color: Color(0xFF12116A),)),
        actions: [
          GestureDetector(
            onTap: (){
              

            },
            child: Icon(Icons.search, color: Color(0xFF161360), size: 30,),
          ),
          const SizedBox(width: 20,)



        ],
        

      ),
      backgroundColor: Color(0xFFF6F4FF),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Add Community Members', style: TextStyle(color: Color(0xFF4F458B), fontSize: 24),),
                  Text('Choose up to 1000 contacts', style: TextStyle(color: Color(0xFF9A94BE)),),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Choosed Contacts', style: TextStyle(color: Color(0xFF4F458B), fontSize: 16),),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(10, (index) => AvatarToCommunityMembers()),
                    ),
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('All Contacts', style: TextStyle(color: Color(0xFF4F458B), fontSize: 16),),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                  Column(
                    children: List.generate(10, (index) => AllContactsCards()),
                  )
                ],
              )
             
              
              
              
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Color(0xFF6B5CF5),onPressed: (){
        Navigator.pop(context);


      }, child: Icon(Icons.arrow_forward_ios, color: Colors.white,),),
    );
  }
}