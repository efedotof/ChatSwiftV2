import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../CommunicationChats/ChatPageCommunication.dart';

class CommunicationCards extends StatefulWidget {
  const CommunicationCards({super.key});

  @override
  State<CommunicationCards> createState() => _CommunicationCardsState();
}

class _CommunicationCardsState extends State<CommunicationCards> {
  String hellos =
      'Culpa veniam ea duis adipisicing reprehenderit laboris id dolore.';
  String endMessage() {
    if (hellos.length > 10) {
      return hellos.substring(0, 10) + '...';
    } else {
      return hellos;
    }
  }

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
                          height: MediaQuery.of(context).size.height * 0.37,
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
                              Text(
                                'Name Chats',
                                style: TextStyle(
                                    color: Color(0xFF130F61),
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 6,),
                              
                              Container(
                  width: MediaQuery.of(context).size.width * 0.24,
                  child: Stack(
                    children: [
                      CircleAvatar(radius: 16,backgroundColor: Color(0xFFC38250),),
                      Positioned(left:16,child: CircleAvatar(radius: 16,backgroundColor: Color(0xFFBB4572),)),
                      Positioned(left: 32,child: CircleAvatar(radius: 16,backgroundColor: Color(0xFF1B1168),))
                
                
                
                    ],
                  ),
                )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Switch(
                        thumbIcon: MaterialStateProperty.resolveWith<Icon?>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.disabled)) {
                            return const Icon(Icons.notifications_off,
                                color: Colors
                                    .white); // Иконка при выключенном состоянии
                          }
                          return const Icon(Icons.notifications,
                              color: Colors
                                  .white); // All other states will use the default thumbIcon.
                        }),
                        trackColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.disabled)) {
                              return const Color(
                                  0xFFF6F4FF); // Фон при выключенном состоянии
                            }
                            return const Color(
                                0xFFF6F4FF); // Фон при включенном состоянии
                          },
                        ),
                        thumbColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.disabled)) {
                              return const Color(
                                  0xFF7159F3); // Цвет кружочка при выключенном состоянии
                            }
                            return const Color(
                                0xFF7159F3); // Цвет кружочка при включенном состоянии
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
                              child: Icon(
                                Icons.info,
                                color: Color(0xFF6D5BED),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFF5F3FD),
                              ),
                              child: Icon(
                                Icons.message,
                                color: Color(0xFF6D5BED),
                              ),
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
    return GestureDetector(
      onTap: (){
        //ChatPageCommunication
        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child:ChatPageCommunication(),
                                isIos: true,
                                duration: Duration(milliseconds: 1600)));
      },
      onLongPress: () {
        _showProfiles(context);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        height: MediaQuery.of(context).size.height * 0.2,
        padding: EdgeInsets.all(9),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFFFFFFFF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Color(0xFFA0858D)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.03,
                          height: 4,
                          color: Color(0xFFFD84B6),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           
                    SizedBox(height: 6,),
                            Text(
                              'Higland Collage',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                        
                          
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF83785),
                  ),
                  child: Center(
                    child: Text('1',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                        )),
                  ),
                ),
              ],
            ),
            RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Jems: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                      text: '${endMessage()}',
                      style: TextStyle(color: Color(0xFFCFCDE4))),
                ],
              ),
            ),
           Container(
                  width: MediaQuery.of(context).size.width * 0.24,
                  child: Stack(
                    children: [
                      CircleAvatar(radius: 16,backgroundColor: Color(0xFFC38250),),
                      Positioned(left:16,child: CircleAvatar(radius: 16,backgroundColor: Color(0xFFBB4572),)),
                      Positioned(left: 32,child: CircleAvatar(radius: 16,backgroundColor: Color(0xFF1B1168),))
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}
