import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfileTickTokCards extends StatefulWidget {
  const ProfileTickTokCards({super.key});

  @override
  State<ProfileTickTokCards> createState() => _ProfileTickTokCardsState();
}

class _ProfileTickTokCardsState extends State<ProfileTickTokCards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.01, vertical: MediaQuery.of(context).size.height * 0.01),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.remove_red_eye, color: Colors.white,),
                      const SizedBox(width: 4,),
                      Text('22356'),
                    ],
              
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.flash_on, color: Colors.white,),
                      const SizedBox(width: 4,),
                      Text('00:05'),
                    ],
              
                  ),
                ),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}