import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RingingCall extends StatefulWidget {
  const RingingCall({super.key,
  
  required this.isCommunity,
  
  });

  final bool isCommunity;

  @override
  State<RingingCall> createState() => _RingingCallState();
}

class _RingingCallState extends State<RingingCall> {
    bool swithnotification = false;



 



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
      body:widget.isCommunity?
      
        Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Groupe Call',style: TextStyle(color: Color(0xFF5C588F), fontWeight: FontWeight.bold, fontSize: 30),),
              Text('Bruno, Amanda, George, Dirda',style: TextStyle(color: Color(0xFFB2ABD3)),),
            ],
          ),
     


          Container(
                  width: MediaQuery.of(context).size.width * 0.24,
                  child: Stack(
                    children: [
                      CircleAvatar(radius: 22,backgroundColor: Color(0xFFC38250),),
                      Positioned(left: 22,child: CircleAvatar(radius: 22,backgroundColor: Color(0xFFBB4572),)),
                      Positioned(left: 42,child: CircleAvatar(radius: 22,backgroundColor: Color(0xFF1B1168),))
                
                
                
                    ],
                  ),
                ),




          Container(
            width: MediaQuery.of(context).size.width,
       
            decoration: BoxDecoration(
             
              color: Colors.transparent
            ),


            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(9),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF93889)
                  ),
                  child: Icon(Icons.call_end, color: Colors.white),),
                Container(
                  padding: EdgeInsets.all(9),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF867FB5)
                  ),
                  child: Icon(Icons.message, color: Color(0xFFF6F5FE),),
                ),


                  Container(
                  padding: EdgeInsets.all(9),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF4CB050)
                  ),
                  child: Icon(Icons.call, color: Color(0xFFF6F5FE),),
                ),
                
                
        



            
          
          

        
        ],
      )),

          
          SizedBox(height: MediaQuery.of(context).size.height * 0.01,),






        ])

      
       :Column(
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
            width: MediaQuery.of(context).size.width,
       
            decoration: BoxDecoration(
             
              color: Colors.transparent
            ),


            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(9),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF93889)
                  ),
                  child: Icon(Icons.call_end, color: Colors.white),),
                Container(
                  padding: EdgeInsets.all(9),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF867FB5)
                  ),
                  child: Icon(Icons.message, color: Color(0xFFF6F5FE),),
                ),


                  Container(
                  padding: EdgeInsets.all(9),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF4CB050)
                  ),
                  child: Icon(Icons.call, color: Color(0xFFF6F5FE),),
                ),
                
                
        



            
          
          

        
        ],
      )),

          
          SizedBox(height: MediaQuery.of(context).size.height * 0.01,),






        ])

    );
  }
}