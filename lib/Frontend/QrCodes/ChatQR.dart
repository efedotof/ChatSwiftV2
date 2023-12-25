import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChatQr extends StatefulWidget {
  const ChatQr({super.key});

  @override
  State<ChatQr> createState() => _ChatQrState();
}

class _ChatQrState extends State<ChatQr> {
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
            child: Icon(Icons.share, color: Color(0xFF161360), size: 30,),
          ),
          const SizedBox(width: 20,)



        ],
        

      ),
      backgroundColor: Color(0xFFF6F4FF),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Profile QR Code', style: TextStyle(color: Color(0xFF4F458B), fontSize: 24),),
              Text('Share this code to share your friend contact', style: TextStyle(color: Color(0xFF9A94BE)),),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.2,),
          
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.white,
              ),
              child: Padding(
                 padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Column(
            
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                    Text('Milendra', style: TextStyle(color: Color(0xFF1C1166), fontWeight: FontWeight.bold, fontSize: 30),),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                    Text('Commodo reprehenderit adipisicing aute nostrud exercitation. Fugiat consequat magna consequat amet tempor nulla irure. ', style: TextStyle(color: Color(0xFF9A94BE)), textAlign: TextAlign.center,),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: MediaQuery.of(context).size.height * 0.25,
                      color: Color(0xFF5B60FA),
                    ),
                    
                  ],
                ),
              ),
              
            ),
          )
          
          
          
        ],
      ),
    );
  }
}