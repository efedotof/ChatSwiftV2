import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mychats2/Frontend/HomePage/Home.dart';
import 'package:page_transition/page_transition.dart';

import '../../Backend/model/SharedPreferencseCode.dart';
import '../../Backend/model/untilsCodes.dart';

class SetupAccount extends StatefulWidget {
  const SetupAccount({super.key});

  @override
  State<SetupAccount> createState() => _SetupAccountState();
}

class _SetupAccountState extends State<SetupAccount> {
  TextEditingController textNameController = TextEditingController();
  TextEditingController textPasswordController = TextEditingController();
  SharedPreferenceCode preferenceCode = SharedPreferenceCode();
  UntilsCode unts = UntilsCode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(onTap: (){Navigator.of(context).pop();}, child: Icon(Icons.arrow_back_ios,)),




      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.1),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                    
               
               SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              Text('Setup Account', style: TextStyle(color:Color(0xFF252265), fontSize: 40, fontWeight: FontWeight.bold)),
              Text('Fill your account information below', style: TextStyle(color:Color(0xFFDAD7EA), fontSize: 20 ),),
               
               
               Center(
                 child: Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                    shape:BoxShape.circle,
                    color: Color(0xFFF6F4FF),
                  ),
                  alignment: Alignment.center,
                  child: Icon(Icons.camera_alt, color: Color(0xFF635CF6),),
                 ),
              
               ),
               
               
               
               
              Container(
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFF6F4FF)
                ),
                child: TextFormField(
                  controller: textNameController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
              
                  labelText: 'Имя',
                  ),
              
              
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFF6F4FF)
                ),
                child: TextFormField(
                  controller: textPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
              
                  labelText: 'Пароль',
                  ),
              
              
                ),
              ),
              
              
              
            ],
          ),
        ),
      ),
       floatingActionButton: FloatingActionButton(backgroundColor: Color(0xFF6B5BF5),onPressed: (){
        
         Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: Home(),
                                isIos: true,
                                duration: Duration(milliseconds: 1600)));
        
        
        
                      





      }, child: Icon(Icons.arrow_forward_ios),),
    );
  }
  String convertToBinary(String input) {
  List<String> binaryList = [];

  for (int i = 0; i < input.length; i++) {
    // Получаем ASCII-код текущего символа
    int charCode = input.codeUnitAt(i);

    // Преобразуем ASCII-код в двоичную систему счисления и добавляем к списку
    binaryList.add(charCode.toRadixString(2));
  }

  // Объединяем все элементы списка в одну строку
  String binaryString = binaryList.join('');

  return binaryString;
}
}