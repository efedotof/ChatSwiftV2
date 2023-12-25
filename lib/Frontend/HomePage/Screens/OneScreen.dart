import 'package:flutter/material.dart';
import 'package:mychats2/Frontend/HomePage/widgets/Categories.dart';
import 'package:mychats2/Frontend/HomePage/widgets/profile.dart';

import '../widgets/Chats.dart';
import '../widgets/Community.dart';

class OneScreen extends StatefulWidget {
  const OneScreen({super.key});

  @override
  State<OneScreen> createState() => _OneScreenState();
}

class _OneScreenState extends State<OneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
         physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
            Profile(),
            CategoriesofImportance(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
            Community(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
            Chats(),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Color(0xFF765CF4),onPressed: (){}, child: Icon(Icons.message),),
    );
    
  }
}