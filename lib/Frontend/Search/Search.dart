import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../HomePage/widgets/ChatsCards.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFF6F4FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
           


        ],
        title: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: Colors.white
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Search something',
                      contentPadding: EdgeInsets.all(18),
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
                Icon(Icons.search, color: Color(0xFF272166),),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),

      
        leading: GestureDetector(onTap: (){
           Navigator.pop(context);
        },child: Icon(Icons.arrow_back_ios, color: Color(0xFF6A6694),)),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent Search', style: TextStyle(color: Color(0xFF3D357D), fontWeight: FontWeight.bold, fontSize: 18),),
                  Icon(Icons.close, color: Color(0xFF382F73),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Row(
                children: List.generate(4, (index) => Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.01),
                  child: CircleAvatar(),
                )),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03, vertical:MediaQuery.of(context).size.height * 0.03,),
              width: MediaQuery.of(context).size.width ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(18), topRight: Radius.circular(18)),
                color: Colors.white
              ),
              child: Column(
                children: List.generate(20, (index) => Padding(
                  padding:  EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height * 0.01,),
                  child: ChatsCards(),
                )),
              ),
            )


            
            
            
          ],
            
            
        ),
      ),


    );
  }
}