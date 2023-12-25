import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../Backend/model/SharedPreferencseCode.dart';
import 'SetupAccount.dart';
import 'VerifyOTP.dart';

class SISO extends StatefulWidget {
  const SISO({super.key});

  @override
  State<SISO> createState() => _SISOState();
}

class _SISOState extends State<SISO> {
  TextEditingController textController = TextEditingController();
  SharedPreferenceCode preferenceCode = SharedPreferenceCode();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
         backgroundColor: Colors.transparent,
         leading: GestureDetector(onTap: (){Navigator.of(context).pop();}, child: Icon(Icons.arrow_back_ios,)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
              Text('Continue with your unique key', style: TextStyle(color:Color(0xFF252265), fontSize: 40, fontWeight: FontWeight.bold )),
               SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              Text('Lorem ipsum dolor sit amet, conse', style: TextStyle(color:Color(0xFFDAD7EA), fontSize: 20 ),),
               SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
              Container(
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFF6F4FF)
                ),
                child: TextFormField(
                  controller: textController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
        
                  labelText: 'Введите вашу почту',
           
                  ),
        
        
                ),
              ),
               SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
               Center(child: Container(width: MediaQuery.of(context).size.width * 0.5,child: Text('Подтверждение с правилами Tearms and Condklon', textAlign: TextAlign.center, style: TextStyle(color:Color(0xFFDAD7EA)),))),

            
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Color(0xFF6B5BF5),onPressed: (){
   
              
                 Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: SetupAccount(),
                                isIos: true,
                                duration: Duration(milliseconds: 1600)));
     
          





       





      }, child: Icon(Icons.arrow_forward_ios),),
    );
  }
}