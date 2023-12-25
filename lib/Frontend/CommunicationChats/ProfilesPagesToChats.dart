import 'package:flutter/material.dart';
import 'package:mychats2/Frontend/ChatPage/Files.dart';
import 'package:mychats2/Frontend/ChatPage/SavedMessages.dart';
import 'package:page_transition/page_transition.dart';

import '../QrCodes/ChatQR.dart';
import '../QrCodes/CommunicationQr.dart';
import 'EditCommunity.dart';
import 'Members.dart';

class ProfilesPagesToChats extends StatefulWidget {
  const ProfilesPagesToChats({super.key});

  @override
  State<ProfilesPagesToChats> createState() => _ProfilesPagesToChatsState();
}

class _ProfilesPagesToChatsState extends State<ProfilesPagesToChats> {
  bool swithnotification = true;
  
  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Colors.white,
        leading: GestureDetector( onTap: (){
              Navigator.pop(context);


            },child: Icon(Icons.arrow_back_ios, color: Color(0xFF12116A),)),
        actions: [
          GestureDetector(
            onTap: (){
             
                Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: EditCommunity(),
                                isIos: true,
                                duration: Duration(milliseconds: 1600)));
            },
            child: Icon(Icons.edit_outlined, color: Color(0xFF161360), size: 30,),
          ),
          GestureDetector(
            onTap: (){
             
                Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: CommunicationQr(),
                                isIos: true,
                                duration: Duration(milliseconds: 1600)));
            },
            child: Icon(Icons.qr_code_2, color: Color(0xFF161360), size: 30,),
          ),
          const SizedBox(width: 20,)



        ],

      ),
      backgroundColor: Color(0xFFF6F4FF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
      
                 padding: EdgeInsets.all(9),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
                    color: Colors.white
                  ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width ,
                          height: MediaQuery.of(context).size.height * 0.25,
                          color: Colors.yellow,
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                              Text('Smurze Studio',style: TextStyle(color: Color(0xFF171763), fontWeight: FontWeight.bold, fontSize: 24), ),
                              Text('Last seen on yesterday at 09:00 am',style: TextStyle(color: Color(0xFFDCDBEF),)),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                              Container(width: MediaQuery.of(context).size.width * 0.8,child: Text('Directive of Personal Project',style: TextStyle(color: Color(0xFF171763), fontWeight: FontWeight.w500, fontSize: 18),)),
                              Text('Description',style: TextStyle(color: Color(0xFFDCDBEF),)),
                            ],
                          ),
                        ),
      
      
                      ],
                    ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.23,
                  left: MediaQuery.of(context).size.width * 0.8
                  
                  
                  ,child: 
                  Container(padding: EdgeInsets.all(9),decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xFF6A5EF0)) ,child:Center(child: Icon(Icons.message, color: Colors.white,),) ,)
                
                )
      

              





      
      
              ],
      
      
      
          ),
          SizedBox(height: 40,),


          GestureDetector(
            onTap: (){
               Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: SavedMessages(),
                                isIos: true,
                                duration: Duration(milliseconds: 1600)));
                      



            },
            child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFFFB100),
                              ),
                              child: Icon(Icons.bookmark_border, color: Colors.white, size: 18,),
                            ),
                            const SizedBox(width: 20,),
                              Text('Saved Messages', style: TextStyle(color: Color(0xFF7770AA),),),
                          ],
                        ),
          
          
          
                          Icon(Icons.arrow_forward_ios, size: 16,),
                      ])),
          ),
                        SizedBox(height: 10,),
                    Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFFA8D39),
                            ),
                            child: Icon(Icons.notifications_outlined, color: Colors.white, size: 18,),
                          ),
                          const SizedBox(width: 20,),
                            Text('Notification', style: TextStyle(color: Color(0xFF7770AA),),),
                        ],
                      ),



                       Switch(
  thumbIcon: MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return const Icon(Icons.notifications_off, color: Color(0xFF7058F1));
      }
      return const Icon(Icons.notifications, color: Color(0xFF7058F1));
    },
  ),
  trackColor: MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return const Color(0xFF8156F5); // Фон при выключенном состоянии
      }
      return const Color(0xFF8156F5); // Фон при включенном состоянии
    },
  ),
  thumbColor: MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return Colors.white;
      }
      return Colors.white;
    },
  ),
  splashRadius: 50.0,
  value: swithnotification,
  onChanged: (value) {
    setState(() {
      swithnotification = value;
    });
  },
),
                    ])),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                          Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: Files(),
                                isIos: true,
                                duration: Duration(milliseconds: 1600)));
                      



                      },
                      child: Container(
                                      width: MediaQuery.of(context).size.width * 0.9,
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF625EFC),
                              ),
                              child: Icon(Icons.bookmark_border, color: Colors.white, size: 18,),
                            ),
                            const SizedBox(width: 20,),
                              Text('Files', style: TextStyle(color: Color(0xFF7770AA),),),
                          ],
                        ),
                    
                    
                    
                          Icon(Icons.arrow_forward_ios, size: 16,),
                      ])),
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                          Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: Members(),
                                isIos: true,
                                duration: Duration(milliseconds: 1600)));
                      



                      },
                      child: Container(
                                      width: MediaQuery.of(context).size.width * 0.9,
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF9950F8),
                              ),
                              child: Icon(Icons.person_2_outlined, color: Colors.white, size: 18,),
                            ),
                            const SizedBox(width: 20,),
                              Text('Members', style: TextStyle(color: Color(0xFF7770AA),),),
                          ],
                        ),
                    
                    
                    
                          Icon(Icons.arrow_forward_ios, size: 16,),
                      ])),
                    ),
          ],
        ),
      ));
  }
}