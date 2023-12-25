import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'ChatsCards.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)
      ),
      ),
      child: Column(
        children: List.generate(14, (index) => Padding(
          padding:  EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height * 0.02),
          child: ChatsCards(),
        )),
      ),


    );
  }
}