import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'CallFromCommunity.dart';
import 'CallFromUser.dart';

class CardsCall extends StatefulWidget {
  const CardsCall({super.key, required this.isCommunity});

  final bool isCommunity; 

  @override
  State<CardsCall> createState() => _CardsCallState();
}

class _CardsCallState extends State<CardsCall> {
  bool swithnotification = false;

   void _showProfiles(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          content: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                      width: MediaQuery.of(context).size.width * 0.08,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFFD84B6),
                      ),
                      height: 3,
                      
                    ),
                    SizedBox(height: 6,),
                              Text(
                                'Michail',
                                style: TextStyle(
                                    color: Color(0xFF130F61),
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                              ),
                              
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Switch(
                        
                        thumbIcon: MaterialStateProperty.resolveWith<Icon?>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {
                             return const Icon(Icons.notifications_off, color: Colors.white); // Иконка при выключенном состоянии
                          }
                          return const Icon(Icons.notifications, color: Colors.white); // All other states will use the default thumbIcon.
                        }),
                         trackColor: MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return const Color(0xFFF6F4FF); // Фон при выключенном состоянии
      }
      return const Color(0xFFF6F4FF); // Фон при включенном состоянии
    },
  ),
  thumbColor: MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return const Color(0xFF7159F3); // Цвет кружочка при выключенном состоянии
      }
      return const Color(0xFF7159F3); // Цвет кружочка при включенном состоянии
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
                      Container(
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF5F3FD),
                              ),
                              child: Icon(Icons.call, color: Color(0xFF6D5BED),),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF5F3FD),
                              ),
                              child: Icon(Icons.video_call, color: Color(0xFF6D5BED),),
                            ),
                             SizedBox(width: 10,),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF5F3FD),
                              ),
                              child: Icon(Icons.message, color: Color(0xFF6D5BED),),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }




  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03, vertical: MediaQuery.of(context).size.height * 0.02),
      child: GestureDetector(
      onTap: () {
        //Call


      },
      onLongPress: () {
        _showProfiles(context);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.06,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                )


                // Container(
                //   width: MediaQuery.of(context).size.width * 0.3,
                //   child: Row(children: List.generate(3, (index) => CircleAvatar())
                
                
                //   ,),
                // )
                
                
                :
                
                CircleAvatar(
                  backgroundColor: Color(0xFFFBD7C4),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.03,
                      height: 4,
                      color: Color(0xFFFD84B6),
                    ),
                    Text(
                      'Higland Collage',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Jun 25.2021, 04:50 am',
                              style: TextStyle(color: Color(0xFFCFCDE4))),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
           GestureDetector(onTap:(){
             
             widget.isCommunity?
              Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: CallFromCommunity(),
                                isIos: true,
                                duration: Duration(milliseconds: 1600)))
             
             :
             
             Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: CallFromUser(),
                                isIos: true,
                                duration: Duration(milliseconds: 1600)));
           },child: Icon(Icons.call, color: Color(0xFF7B71F0),)),
          ],
        ),
      ),
      )
    );
  }
}