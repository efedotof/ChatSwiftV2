import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CallFromCommunity extends StatefulWidget {
  const CallFromCommunity({super.key});

  @override
  State<CallFromCommunity> createState() => _CallFromCommunityState();
}

class _CallFromCommunityState extends State<CallFromCommunity> {
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
              Text('Group Call',style: TextStyle(color: Color(0xFF5C588F), fontWeight: FontWeight.bold, fontSize: 30),),
              Text('Bruno, Amanda, George, Dirda',style: TextStyle(color: Color(0xFFB2ABD3)),),
            ],
          ),
     


          Center(child: Wrap(children: List.generate(6, (index) => Padding(
            padding:  EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
            child: CircleAvatar(maxRadius: MediaQuery.of(context).size.width * 0.15,),
          ))),),

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