import 'package:flutter/material.dart';

import 'SavedMessagesCards.dart';

class SavedMessages extends StatefulWidget {
  const SavedMessages({super.key});

  @override
  State<SavedMessages> createState() => _SavedMessagesState();
}

class _SavedMessagesState extends State<SavedMessages> {
  void _showContextMenu(BuildContext context) async {
  final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
  final RenderBox widgetBox = context.findRenderObject() as RenderBox;
  final Offset widgetPosition = widgetBox.localToGlobal(Offset.zero);

  final selectedOption = await showMenu(
    context: context,
    position: RelativeRect.fromLTRB(
     widgetPosition.dx,
      widgetPosition.dy + widgetBox.size.height,
      overlay.size.width - widgetPosition.dx - widgetBox.size.width,
      overlay.size.height - widgetPosition.dy - widgetBox.size.height,
    ),
   items: <PopupMenuEntry>[
      PopupMenuItem(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: ListTile(
            leading: Icon(Icons.reply, color: Color(0xFFB5B1F4),),
            title: Text('Reply'),
          ),
        ),
        value: 'edit',
      ),
      PopupMenuItem(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: ListTile(
            leading: Icon(Icons.copy, color: Color(0xFFA098FD),),
            title: Text('Copy'),
          ),
        ),
        value: 'copy',
      ),
      PopupMenuItem(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: ListTile(
            leading: Icon(Icons.delete, color: Color(0xFFFB639F),),
            title: Text('Удалить'),
          ),
        ),
        value: 'delete',
      ),
      // Add other options as needed
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
  );

  // Handle the selected option
  if (selectedOption != null) {
    // Perform the necessary actions
    print('Выбрано: $selectedOption');
  }
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F4FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Saved Messages', style: TextStyle(color: Color(0xFF6A6694)),),
        leading: GestureDetector(onTap: (){
           Navigator.pop(context);
        },child: Icon(Icons.arrow_back_ios, color: Color(0xFF6A6694),)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: List.generate(10, (index) => Padding(
              padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.03 ),
              child: SavedMessagesCards(isFile: false, isVideo: false, isImage: true,),
            ))
        
        
        
        
            ,
          ),
        ),
      ),
    );
  }
}