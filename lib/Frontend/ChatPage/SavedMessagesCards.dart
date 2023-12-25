import 'package:flutter/material.dart';

class SavedMessagesCards extends StatefulWidget {
  const SavedMessagesCards({super.key,
  required this.isFile,
  required this.isVideo,
  required this.isImage
  
  
  });

  final bool isFile;
  final bool isVideo;
  final bool isImage;



  @override
  State<SavedMessagesCards> createState() => _SavedMessagesCardsState();
}

class _SavedMessagesCardsState extends State<SavedMessagesCards> {
  @override
  Widget build(BuildContext context) {
    return  widget.isFile?
                  Container(
                    padding: EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFFF9F4FF),
                          ),
                          child: Icon(Icons.insert_drive_file_rounded, color: Colors.white,),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Document.pdf', style: TextStyle(color: Color(0xFF7B74AE), fontWeight: FontWeight.bold),),
                            Text('10.8 MB', style: TextStyle(color: Color(0xFFD3CFE7),),),
                          ],
                        )
            
            
                      ],
                    ),
            
            
            
                  )
                  
                  
                   :widget.isVideo
                      ? Padding(
                        padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.1),
                        child: Container(
                      
                          child: Row(
                          
                            children: [
                      
                              Container(
                           
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.2,
                                        height: MediaQuery.of(context).size.height * 0.1,
                                        decoration: BoxDecoration(
                                            color: Colors.yellow,
                                            borderRadius: BorderRadius.circular(16)),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  padding: EdgeInsets.all(4),
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color(0xFF3D4369)
                                                        .withOpacity(0.5),
                                                  ),
                                                  child: Icon(
                                                    Icons.play_arrow,
                                                    color: Colors.white,
                                                  )),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                  padding: EdgeInsets.all(4),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(18),
                                                    color: Color(0xFF3D4369)
                                                        .withOpacity(0.5),
                                                  ),
                                                  child: Text(
                                                    '00:40',
                                                    style: TextStyle(
                                                        color: Color(0xFF574D68)),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ),
                                     
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 30,),
                                  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Me', style: TextStyle(color: Color(0xFF7B74AE), fontWeight: FontWeight.bold),),
                          Text('10.8 MB', style: TextStyle(color: Color(0xFFD3CFE7),),),
                        ],
                          )
                                
                            ],
                          ),
                        ),
                      )
                      : widget.isImage
                          ?Padding(
                        padding:  EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width * 0.1),
                        child: Container(
                      
                          child: Row(
                          
                            children: [
                      
                              Container(
                           
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width * 0.2,
                                        height: MediaQuery.of(context).size.height * 0.1,
                                        decoration: BoxDecoration(
                                            color: Colors.yellow,
                                            borderRadius: BorderRadius.circular(16)),
                                        
                                      ),
                                     
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 30,),
                                  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Me', style: TextStyle(color: Color(0xFF7B74AE), fontWeight: FontWeight.bold),),
                          Text('10.8 MB', style: TextStyle(color: Color(0xFFD3CFE7),),),
                        ],
                          )
                                
                            ],
                          ),
                      
                    
                              )):Container();
                          
  }
}