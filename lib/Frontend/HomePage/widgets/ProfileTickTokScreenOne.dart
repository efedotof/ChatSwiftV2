import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'ProfileTickToksCards.dart';

class ProfileTickTokOneScreen extends StatefulWidget {
  const ProfileTickTokOneScreen({super.key});

  @override
  State<ProfileTickTokOneScreen> createState() => _ProfileTickTokOneScreenState();
}

class _ProfileTickTokOneScreenState extends State<ProfileTickTokOneScreen> {
  @override
  Widget build(BuildContext context) {
    return  Center(
                child: Wrap(
                  children: List.generate(30, (index) => ProfileTickTokCards()),
                ),
              );
  }
}