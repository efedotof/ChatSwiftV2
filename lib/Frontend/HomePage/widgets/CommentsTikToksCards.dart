import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CommentsTikTorCards extends StatefulWidget {
  const CommentsTikTorCards({super.key});

  @override
  State<CommentsTikTorCards> createState() => _CommentsTikTorCardsState();
}

class _CommentsTikTorCardsState extends State<CommentsTikTorCards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02, vertical:MediaQuery.of(context).size.height * 0.02 ),
      child: Container(
        width: MediaQuery.of(context).size.width ,
        
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 20,),
                CircleAvatar(
                  maxRadius: 22,
                  backgroundColor: Colors.black,
                ),
                const SizedBox(width: 20,),
                Text('Name Profiles'),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text('Voluptate aliquip do adipisicing consectetur proident. Voluptate et reprehenderit id et sint magna velit. Velit incididunt ipsum magna esse sint ex et incididunt ut velit voluptate voluptate. Nostrud id anim commodo eiusmod velit cupidatat labore enim. Duis consectetur qui tempor id anim laboris id tempor excepteur.'),
                )
              ],
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.end,
              children: [
              
                Icon(Icons.favorite, color: Colors.black,),
                const SizedBox(width: 20,),
                Icon(Icons.reply_rounded, color: Colors.black,),
                const SizedBox(width: 20,),
            
              ],
            )





          ],
        ),
      ),
    );
  }
}