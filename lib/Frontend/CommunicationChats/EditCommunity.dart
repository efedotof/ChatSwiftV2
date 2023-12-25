import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EditCommunity extends StatefulWidget {
  const EditCommunity({super.key});

  @override
  State<EditCommunity> createState() => _EditCommunityState();
}

class _EditCommunityState extends State<EditCommunity> {
  TextEditingController textController = TextEditingController();
  int selectedIndex = -1;
 @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0,
        backgroundColor:Colors.transparent,
        leading: GestureDetector( onTap: (){
              Navigator.pop(context);


            },child: Icon(Icons.arrow_back_ios, color: Color(0xFF12116A),)),
        
        

      ),
      backgroundColor: Color(0xFFF6F4FF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Edit Community', style: TextStyle(color: Color(0xFF4F458B), fontSize: 24),),
                Text('Edit community details below', style: TextStyle(color: Color(0xFF9A94BE)),),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color(0xFF9B868D),
              ),
            ),
            const SizedBox(height: 10,),
             Text('Title'),
                   const SizedBox(height: 10,), 
                    Container(
                      padding: EdgeInsets.all(8),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        controller: textController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Название',
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                     Text('Choose Tag'),
                     const SizedBox(height: 10,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(10, (index) {
        final color = Color.fromRGBO(
          255,
          0,
          ((index / 10) * 255).toInt(),
          1.0,
        );
        

        return InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal:8.0),
            child: Container(padding: EdgeInsets.all(8), decoration: BoxDecoration(
              color: selectedIndex == index? color :Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(13)
      
      
      
            )  ,height: MediaQuery.of(context).size.height * 0.05,
            child: Row(
              children: [
                Icon(Icons.home),
                const SizedBox(width: 4,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name'),
      
                    
                    Container(
                      width: MediaQuery.of(context).size.width * 0.02,
                      height: 3,
                      color: color,
                    )
      
      
      
                  ],
      
      
                )
      
      
      
              ],))));
      
      
            
            
      
            
          
      }),
    ),
                    ),
          
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Color(0xFF685CF4), onPressed: (){
        Navigator.pop(context);



      }, child: Icon(Icons.check, color: Colors.white,), ),
    );
  }
}