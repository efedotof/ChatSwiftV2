import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'ProfileTickToksCards.dart';

class ProfileTickTokScreenTwo extends StatefulWidget {
  const ProfileTickTokScreenTwo({super.key});

  @override
  State<ProfileTickTokScreenTwo> createState() => _ProfileTickTokScreenTwoState();
}

class _ProfileTickTokScreenTwoState extends State<ProfileTickTokScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return  Center(
                child: Wrap(
                  children: List.generate(30, (index) => ProfileTickTokCards()),
                ),
              );
  }
}