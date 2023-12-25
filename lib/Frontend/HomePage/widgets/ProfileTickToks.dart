import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../QrCodes/ChatQR.dart';
import 'ProfileTickTokScreenOne.dart';
import 'ProfileTickTokScreenTwo.dart';
import 'ProfileTickToksCards.dart';

class ProfileTickTok extends StatefulWidget {
  const ProfileTickTok({super.key});

  @override
  State<ProfileTickTok> createState() => _ProfileTickTokState();
}

class _ProfileTickTokState extends State<ProfileTickTok> {

  
  int isSelecteds = 0;


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xFFF6F4FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: (){
              //ChatQr
                Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: ChatQr(),
                                isIos: true,
                                duration: Duration(milliseconds: 1600)));
            },
            child: Icon(Icons.qr_code_2, color: Color(0xFF161360), size: 30,),
          ),
          const SizedBox(width: 20,)



        ],
        title: Text('jacob_w', style: TextStyle(color: Color(0xFF6A6694)),),
        leading: GestureDetector(onTap: (){
           Navigator.pop(context);
        },child: Icon(Icons.arrow_back_ios, color: Color(0xFF6A6694),)),
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xFF40515B),
                              ),
                              const SizedBox(height: 10,),
                              Text('Jacob Werst', style: TextStyle(color: Color(0xFFC3C2C3)),),
                            ],


                          ),
                        ),
                        Column(
                          children: [
                            const SizedBox(height: 20,),
                            Container(
                              child: Row(
                               
                                children: [
                                  const SizedBox(width: 20,),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('14', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                                        const SizedBox(height: 10,),
                                        Text('Following', style: TextStyle(color: Color(0xFFDAD8D8)),),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                   Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('38', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                        const SizedBox(height: 10,),
                                        Text('Followers', style: TextStyle(color: Color(0xFFDAD8D8)),),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                   Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('119.5M', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                        const SizedBox(height: 10,),
                                        Text('Views', style: TextStyle(color: Color(0xFFDAD8D8)),),
                                      ],
                                    ),
                                  )




                                ]
                                
                                ),
                            ),
                            const SizedBox(height: 20,),
                            
                            Container(
                              width: MediaQuery.of(context).size.width* 0.5,
                              height: MediaQuery.of(context).size.height * 0.04,
                              decoration: BoxDecoration(
                                color: Color(0xFFEA475A),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              alignment: Alignment.center,
                              child: Text('Follow', style: TextStyle(color: Colors.white),)),

                            



                          ],
                        )





                      ],
                    ),
                    // const SizedBox(height: 10,),
                    // Center(
                    //   child: Container(width: MediaQuery.of(context).size.width * 0.5,child: Text('Cupidatat Lorem veniam culpa magna excepteur nisi dolor sit occaecat ullamco. Dolore deserunt et proident tempor nulla mollit duis ullamco aute do dolore. ', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFF868688)),)),
                    // ),
                    const SizedBox(height: 20,),
                  
                  
                  ],
                ),
              ),
              
              const SizedBox(height: 20,),
              
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                    onTap: (){
                    setState(() {
                      isSelecteds = 0;
                    });
                    
                    
                    },
                      child: Container( height: MediaQuery.of(context).size.height * 0.05,width: MediaQuery.of(context).size.width * 0.2, decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), 
                        color:isSelecteds == 0? Colors.black: Colors.transparent,
                    
                      ),child: Icon(Icons.format_align_justify,color:isSelecteds == 0? Colors.white: Colors.black,)),
                    ),
                    GestureDetector(
                    onTap: (){
                    setState(() {
                      isSelecteds = 1;
                    });
                     },
                      child: Container( height: MediaQuery.of(context).size.height * 0.05,width: MediaQuery.of(context).size.width * 0.2, decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), 
                        color: isSelecteds == 1? Colors.black: Colors.transparent,
                    
                      ),child:Icon(Icons.favorite_border_outlined,color: isSelecteds == 1? Colors.white: Colors.black,)),
                    ),


                  ],
                ),
              ),

              SizedBox(height: 20,),



              isSelecteds == 0? ProfileTickTokOneScreen(): ProfileTickTokScreenTwo()


            
            ],
          ),
        ),




      ),



    );
  }
}