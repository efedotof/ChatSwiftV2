import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AvatarToCommunityMembers extends StatefulWidget {
  const AvatarToCommunityMembers({super.key});

  @override
  State<AvatarToCommunityMembers> createState() =>
      _AvatarToCommunityMembersState();
}

class _AvatarToCommunityMembersState extends State<AvatarToCommunityMembers> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width *0.01),
      child: Stack(
        children: [
          CircleAvatar(
            backgroundColor: Colors.yellow,
            maxRadius: 24,
          ),
          Positioned(
            top: 0,
            right: 0,
    
    
              child: CircleAvatar(
                maxRadius: 8,
            backgroundColor: Color(0xFF817AB2),
            child: Icon(
              Icons.close,
              size: 13,
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ))
        ],
      ),
    );
  }
}
