import 'package:flutter/material.dart';

import 'SavedMessagesCards.dart';

class Files extends StatefulWidget {
  const Files({super.key});

  @override
  State<Files> createState() => _FilesState();
}

class _FilesState extends State<Files> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F4FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Files', style: TextStyle(color: Color(0xFF6A6694)),),
        leading: GestureDetector(onTap: (){
           Navigator.pop(context);
        },child: Icon(Icons.arrow_back_ios, color: Color(0xFF6A6694),)),
      ),
       body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: List.generate(10, (index) => Padding(
              padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.03 ),
              child: SavedMessagesCards(isFile: false, isVideo: false, isImage: true,),
            ))
        
        
        
        
            ,
          ),
        ),
      ),
    );
  }
}