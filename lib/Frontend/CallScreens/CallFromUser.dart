import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CallFromUser extends StatefulWidget {
  const CallFromUser({super.key});

  @override
  State<CallFromUser> createState() => _CallFromUserState();
}

class _CallFromUserState extends State<CallFromUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 backgroundColor: Color(0xFFF6F4FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // title: Text('Saved Messages', style: TextStyle(color: Color(0xFF6A6694)),),
        leading: GestureDetector(onTap: (){
           Navigator.pop(context);
        },child: Icon(Icons.arrow_back_ios, color: Color(0xFF6A6694),)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Milendra',style: TextStyle(color: Color(0xFF5C588F), fontWeight: FontWeight.bold, fontSize: 30),),
              Text('+1-889-348-8822',style: TextStyle(color: Color(0xFFB2ABD3)),),
            ],
          ),
     


          Center(child: CircleAvatar(maxRadius: MediaQuery.of(context).size.width * 0.25,),),

          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color(0xFFF1E3FF)
              ),
              alignment: Alignment.center,
              child: Text('00:00', style: TextStyle(color: Color(0xFFCFCAE4)),),
          ),



          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(16)),
              color: Colors.white
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(9),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFE8E6FE)
                  ),
                  child: Icon(Icons.video_camera_front, color: Color(0xFF867EB5),),
                ),
                Container(
                  padding: EdgeInsets.all(9),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFE8E6FE)
                  ),
                  child: Icon(Icons.mic, color: Color(0xFF867EB5),),
                ),

Container(
                  padding: EdgeInsets.all(9),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF93889)
                  ),
                  child: Icon(Icons.call_end, color: Colors.white),),
                
                
        



            
          
          

        
        ],
      )),

        ])

    );
  }
}