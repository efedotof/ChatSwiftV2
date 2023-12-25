import 'dart:math';

import 'package:flutter/material.dart';

class CategoriesofImportance extends StatefulWidget {
  const CategoriesofImportance({super.key});

  @override
  State<CategoriesofImportance> createState() => _CategoriesofImportanceState();
}

class _CategoriesofImportanceState extends State<CategoriesofImportance> {

    final List<IconData> icons = [
    Icons.macro_off,
    Icons.nat,
    Icons.baby_changing_station,
    Icons.vaccines,
    Icons.aspect_ratio,
    Icons.local_activity,
    Icons.macro_off,
    Icons.edit,
    Icons.home,
    Icons.menu_book,
  ];





double _containerHeight = 100.0;
TextEditingController textController = TextEditingController();
    void _creatTags() async {
    double maxSheetHeight = MediaQuery.of(context).size.height * 0.8;
    double initialContainerHeight = MediaQuery.of(context).size.height * 0.62;
    double minContainerHeight = MediaQuery.of(context).size.height * 0.62;
    _containerHeight = initialContainerHeight;
     int selectedIndex = -1;
     int selectedIndexIcons = -1;
    showModalBottomSheet(
  context: context,
  backgroundColor: Colors.transparent,
  isScrollControlled: true,
  builder: (BuildContext context) {
    return StatefulBuilder(
      
      builder: (BuildContext context, StateSetter setState) {
        return GestureDetector(
          onVerticalDragUpdate: (details) {
            setState(() {
              _containerHeight -= details.primaryDelta!;
              if (_containerHeight < 0) {
                _containerHeight = 0;
              } else if (_containerHeight > maxSheetHeight) {
                _containerHeight = maxSheetHeight;
              }
              if (_containerHeight < minContainerHeight) {
                Navigator.pop(context);
              }
            });
          },
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            
            ),
            
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: _containerHeight,
              constraints: BoxConstraints(
                maxHeight: maxSheetHeight,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.08, vertical: MediaQuery.of(context).size.height * 0.02),
                      child: Text('Create\nTags', style: TextStyle(color: Color(0xFF15104F), fontSize: 30, fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.08, vertical: MediaQuery.of(context).size.height * 0.01),
                      child: Text('Title'),
                    ),
                    
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.08),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFF6F4FF),
                        ),
                        child: TextFormField(
                          controller: textController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Название',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.08, vertical: MediaQuery.of(context).size.height * 0.02),
                      child: Text('Color'),
                    ),
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
          child: Container(
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: color,
            ),
            height: 50,
            margin: EdgeInsets.all(5),
            child: selectedIndex == index
                ? Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  )
                : null,
          ),
        );
      }),
    ),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.08, vertical: MediaQuery.of(context).size.height * 0.02),
                      child: Text('Icon'),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child:Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(icons.length, (index) {
        final randomIcon = icons;

        return InkWell(
          onTap: () {
            setState(() {
              selectedIndexIcons = index;
            });
          },
          child: Container(
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: selectedIndexIcons == index ? Colors.blue : Color(0xFFF5F5FF),
            ),
            height: 50,
            child: Icon(
              randomIcon[index],
              color: selectedIndexIcons == index ? Colors.white : null,
            ),
            margin: EdgeInsets.all(3),
          ),
        );
      }),
    ),
                    ),
                    Spacer(), // Добавлен Spacer, чтобы разместить кнопку внизу
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.08, vertical: MediaQuery.of(context).size.height * 0.02),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color(0xFF6F5AF5)
                        ),
                        child: Center(
                          child: Text('Save Tag', style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  },
).whenComplete(() {
      setState(() {

      });
    });
  }






  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: 
      Padding(
         padding:  EdgeInsets.symmetric(horizontal:8.0),
        child: Row(
          children: [
            GestureDetector(
              onTap: (){


                _creatTags();


              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xFF7A58F9)
                ),
                child: Center(
                  child: Icon(Icons.add, color: Colors.white,),
                ),
              ),
            ),
      
      
      
      
              Row(
          children: List.generate(10, (index) => 
          
          
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:8.0),
            child: Container(padding: EdgeInsets.all(8), decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
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
                      color: Color(0xFFFD84B6),
                    )
      
      
      
                  ],
      
      
                )
      
      
      
              ],
      
      
      
            ),          
            
      
            ),
          )),
        ),  
          ],
        ),
      )
      
      
      
    );
  }
}