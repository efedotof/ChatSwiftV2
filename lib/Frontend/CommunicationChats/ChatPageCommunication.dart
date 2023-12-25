import 'package:flutter/material.dart';
import 'package:mychats2/Frontend/ChatPage/ChatCards.dart';
import 'package:page_transition/page_transition.dart';

import 'ProfilesPagesToChats.dart';

class ChatPageCommunication extends StatefulWidget {
  const ChatPageCommunication({super.key});

  @override
  State<ChatPageCommunication> createState() => _ChatPageCommunicationState();
}

class _ChatPageCommunicationState extends State<ChatPageCommunication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            GestureDetector(
              onTap: (){
                 Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: ProfilesPagesToChats(),
                                isIos: true,
                                duration: Duration(milliseconds: 1600)));
                      

              },
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Smurze Studio', style: TextStyle(color: Color(0xFF6A6694))),
                  
            Text('12 Members online', style: TextStyle(color: Color(0xFFDCDAE5))),
                ],
              )),
            
          ],
        ),
        actions: [
          Icon(Icons.video_call, color: Color(0xFF9293FB)),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.call, color: Color(0xFF9293FB)),
          SizedBox(
            width: 20,
          ),
        ],
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: Color(0xFF6A6694)),
        ),
      ),
      backgroundColor: Color(0xFFF6F4FF),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                 padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                child: Column(
                    children: List.generate(
                        100,
                        (index) => ChatCards(
                              text: '$index',
                              isMyMessage: true,
                              isImage: false,
                              isFile: true,
                              isOpros: false,
                              isRead: false,
                              timesheat: '18:33',
                              isVideo: false,
                            ))),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF7657F7),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Введите сообщение...',
                      contentPadding: EdgeInsets.all(8),
                      border: InputBorder.none,
                      labelStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    maxLines: null,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.mood, color: Color(0xFFD1CFDD)),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
