import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

import 'SetupAccount.dart';

class VerifyOTP extends StatefulWidget {
  const VerifyOTP({super.key});

  @override
  State<VerifyOTP> createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {


   TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  TextEditingController _controller4 = TextEditingController();

  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  FocusNode _focusNode3 = FocusNode();
  FocusNode _focusNode4 = FocusNode();

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();

    _focusNode1.dispose();
    _focusNode2.dispose();
    _focusNode3.dispose();
    _focusNode4.dispose();

    super.dispose();
  }

  Widget buildCodeTextField(
      TextEditingController controller, FocusNode currentFocus, FocusNode nextFocus) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 1/7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFFF6F4FF)
        ),
        child: TextField(
          controller: controller,
          maxLength: 1,
          
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            
            counterText: '',
            border: InputBorder.none,
          ),
          onChanged: (value) {
            if (value.length == 1 && nextFocus != null) {
              currentFocus.unfocus();
              FocusScope.of(context).requestFocus(nextFocus);
            }
          },
        ),
      ),
    );
  }

  FocusNode nullFocusNode() {
    return FocusNode();
  }



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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [





           
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.3,
              child: LottieBuilder.asset('assets/security.json'),
            ),

 SizedBox(height: MediaQuery.of(context).size.height * 0.02,),


            Text('Verify OTP', style: TextStyle(color:Color(0xFF252265), fontSize: 40, fontWeight: FontWeight.bold )),
             SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
            Text('Labore eu consectetur sunt eu excepteur Lorem aliqua velit nisi consectetur cupidatat magna velit in.', style: TextStyle(color:Color(0xFFDAD7EA), fontSize: 20 ),),
             SizedBox(height: MediaQuery.of(context).size.height * 0.03,),


              Row(
                children: [
                    buildCodeTextField(_controller1, _focusNode1, _focusNode2),
                buildCodeTextField(_controller2, _focusNode2, _focusNode3),
                buildCodeTextField(_controller3, _focusNode3, _focusNode4),
                buildCodeTextField(_controller4, _focusNode4, nullFocusNode()),
                ],
              ),
          ],
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