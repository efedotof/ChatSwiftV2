import 'package:flutter/material.dart';

class AllCommunicationCards extends StatefulWidget {
  const AllCommunicationCards({super.key});

  @override
  State<AllCommunicationCards> createState() => _AllCommunicationCardsState();
}

class _AllCommunicationCardsState extends State<AllCommunicationCards> {
  String hellos = 'Culpa veniam ea duis adipisicing reprehenderit laboris id dolore.';
  String endMessage() {
  if (hellos.length > 30) {
    return hellos.substring(0, 30) + '...';
  } else {
    return hellos;
  }
}



  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
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
                      color: Color(0xFFA0858D)
                    ),
                    
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.03,
                        height: 4,
                        color: Color(0xFFFD84B6),
                      ),
                      Text('Higland Collage', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,

                      ),),



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
                  child: Text('1', style: TextStyle(color:Color(0xFFFFFFFF),)),
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
                  style: TextStyle(
                    color: Color(0xFFCFCDE4)
                  )
                ),
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
    );
  }
}