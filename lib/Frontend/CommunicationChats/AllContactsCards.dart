import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AllContactsCards extends StatefulWidget {
  const AllContactsCards({super.key});

  @override
  State<AllContactsCards> createState() => _AllContactsCardsState();
}

class _AllContactsCardsState extends State<AllContactsCards> {
bool isSelected = false;

@override
Widget build(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02, vertical: MediaQuery.of(context).size.height * 0.01),
    child: GestureDetector(
      onTap: (){
        setState(() {
          isSelected = !isSelected;

        });
      },
      child: Container(
        padding: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: isSelected ? Colors.white : Colors.white, // Set the default and selected color here
          border: Border.all(
            width: 3,
            color: isSelected ? Color(0xFFA47DF8) : Colors.transparent, // Change border color when selected
          ),
        ),
        child: Row(
          children: [
            SizedBox(width:  20,),
            CircleAvatar(
              backgroundColor: Color(0xFF311B44),
              child: isSelected ? Icon(
                Icons.check,
                color: Colors.white,
                size: 20,
              ) : null,
            ),
            SizedBox(width:  20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Ace Bartlett', style: TextStyle(color: Color(0xFF38326C), fontWeight: FontWeight.bold),),
                Text('+1-825-431-8752', style: TextStyle(color: Color(0xFFCDCBD9), fontWeight: FontWeight.bold),),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

}



//Color(0xFFA47DF8) border
// 
