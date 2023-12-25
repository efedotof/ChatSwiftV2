import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class ChatCards extends StatefulWidget {
  const ChatCards({
    super.key,
    required this.isMyMessage,
    required this.text,
    required this.isImage,
    required this.isFile,
    required this.isOpros,
    required this.isVideo,
    required this.isRead,
    required this.timesheat,
  });
  final bool isMyMessage;
  final String text;
  final bool isImage;
  final bool isVideo;
  final bool isFile;
  final bool isOpros;
  final bool isRead;
  final String timesheat;

  @override
  State<ChatCards> createState() => _ChatCardsState();
}

class _ChatCardsState extends State<ChatCards> {


  void _showContextMenu(BuildContext context) async {
  final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
  final RenderBox widgetBox = context.findRenderObject() as RenderBox;
  final Offset widgetPosition = widgetBox.localToGlobal(Offset.zero);

  final selectedOption = await showMenu(
    context: context,
    position: RelativeRect.fromLTRB(
      widget.isMyMessage ? MediaQuery.of(context).size.width : 0,
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
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onLongPress: (){
              _showContextMenu(context);

              },
              child: ChatBubble(
                clipper: widget.isMyMessage
                    ? ChatBubbleClipper5(type: BubbleType.sendBubble)
                    : ChatBubbleClipper5(type: BubbleType.receiverBubble),
                alignment:
                    widget.isMyMessage ? Alignment.topRight : Alignment.topLeft,
                margin: const EdgeInsets.only(top: 10),
                backGroundColor: widget.isMyMessage
                    ? widget.isImage || widget.isVideo || widget.isFile
                        ? Colors.transparent
                        : const Color(0xFF645FF7)
                    : widget.isImage || widget.isVideo || widget.isFile
                        ? Colors.transparent
                        : const Color(0xFFFFFFFF),
                elevation: 0,
                padding: EdgeInsets.all(0),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.5,
                  ),
                  child:
                  widget.isFile?
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
                      ? Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                height: MediaQuery.of(context).size.height * 0.3,
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
                        )
                      : widget.isImage
                          ? Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width:
                                          MediaQuery.of(context).size.width * 0.5,
                                      height: MediaQuery.of(context).size.height *
                                          0.3,
                                      decoration: BoxDecoration(
                                          color: Colors.yellow,
                                          borderRadius:
                                              BorderRadius.circular(16))),
                                ],
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Text(
                                widget.text,
                                style: TextStyle(
                                    color: widget.isMyMessage
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: widget.isMyMessage
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.start,
              children: [
                widget.isMyMessage
                    ? widget.isRead
                        ? Container(
                            width: MediaQuery.of(context).size.width * 0.04,
                            height: MediaQuery.of(context).size.height * 0.04,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF5D56FA),
                            ),
                            child: Icon(
                              Icons.done,
                              color: Colors.white,
                              size: 14,
                            ),
                          )
                        : Container(
                            width: MediaQuery.of(context).size.width * 0.04,
                            height: MediaQuery.of(context).size.height * 0.04,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFDCD8EF),
                            ),
                            child: Icon(
                              Icons.done,
                              color: Color(0xFF9993BA),
                              size: 14,
                            ),
                          )
                    : Container(),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.timesheat,
                  style: TextStyle(color: Color(0xFFD7D4E8)),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
