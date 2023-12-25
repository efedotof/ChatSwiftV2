import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:video_player/video_player.dart';

import '../widgets/CommentsTikToksCards.dart';
import '../widgets/ProfileTickToks.dart';

class TwoScreen extends StatefulWidget {
  const TwoScreen({super.key});

  @override
  State<TwoScreen> createState() => _TwoScreenState();
}

class _TwoScreenState extends State<TwoScreen> {
  late PageController _pageController;
  late List<String> videoUrls;
  late List<VideoPlayerController?> controllers;
  late List<Duration?> videoPositions; // Сохраняем текущую позицию видео
  int currentPage = 0;
  bool isLoving = false;
  @override
  void initState() {
    super.initState();

    videoUrls = [
      'https://static.videezy.com/system/resources/previews/000/049/943/original/002831-HD-COUNTDOWN-03.mp4',
      'https://static.videezy.com/system/resources/previews/000/042/772/original/one-particle-one-Red-square_x264.mp4',
      'https://static.videezy.com/system/resources/previews/000/001/581/original/ToddlerWalkingOnBeach.mp4',
    ];

    controllers = List.generate(videoUrls.length, (index) => null);
    videoPositions = List.generate(
        videoUrls.length, (index) => null); // Инициализация списка позиций
    _pageController = PageController();

    _pageController.addListener(() {
      int newPage = _pageController.page?.round() ?? 0;
      if (currentPage != newPage) {
        // Переключение страницы
        _stopCurrentVideo();

        // Обновляем текущую страницу
        currentPage = newPage;

        // Сброс флага videoStoped при переключении видео
        setState(() {
          videoStoped = false;
        });

        // Инициализируем новое видео
        _initializeController(currentPage);
      }
    });

    _initializeController(currentPage);

    for (var i = 0; i < controllers.length; i++) {
      controllers[i]?.addListener(() {
        if (controllers[i] != null &&
            controllers[i]!.value.position >= controllers[i]!.value.duration) {
          // Video has ended, restart it
          _restartVideo(i);
        }
      });
    }
  }

  void _initializeController(int index) {
    if (controllers[index] == null) {
      controllers[index] = VideoPlayerController.network(videoUrls[index])
        ..initialize().then((_) {
          // After successful initialization, start the video or set the position to zero
          if (videoPositions[index] == null) {
            controllers[index]?.play();
          } else {
            controllers[index]?.seekTo(Duration.zero);
            controllers[index]?.play();
          }

          // Remaining code remains the same
          setState(() {});
        });
    } else {
      // If the controller is already initialized, just play it from the beginning
      controllers[index]?.seekTo(Duration.zero);
      controllers[index]?.play();
    }
  }

  void _restartVideo(int index) {
    if (controllers[index] != null) {
      controllers[index]?.seekTo(Duration.zero);
      controllers[index]?.play();
    }
  }

  void _stopCurrentVideo() {
    if (currentPage >= 0 && currentPage < controllers.length) {
      VideoPlayerController? currentController = controllers[currentPage];
      if (currentController != null && currentController.value.isPlaying) {
        currentController.pause();
      }
    }
  }

  bool videoStoped = false;
  double _containerHeight = 200.0;
  TextEditingController textController = TextEditingController();

  void _Comments() async {
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Comments',
                          style: TextStyle(
                              color: Color(0xFF15104F),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Column(
                                  children: List.generate(
                                      40, (index) => CommentsTikTorCards()),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Введите сообщение...',
                                    contentPadding: EdgeInsets.all(8),
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
                              Icon(Icons.mood, color: Color(0xFFD1CFDD)),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            );
          },
        );
      },
    ).whenComplete(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F4FF),
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            controller: _pageController,
            itemCount: controllers.length,
            itemBuilder: (context, index) {
              return _buildVideoPlayer(index);
            },
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              color: Colors.black.withOpacity(0.1),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name Polzovatchel',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Описание',
                        style: TextStyle(
                            color: Color(0xFF595155),
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
            ),
          ),
          if (videoStoped)
            Positioned(
              left: MediaQuery.of(context).size.width * 0.5 -
                  24, 
              top: MediaQuery.of(context).size.height * 0.5 -
                  24, 
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    videoStoped = false;
                  });

                  controllers[currentPage]?.play();
                },
                child: FractionalTranslation(
                  translation: Offset(0.0, 0.0),
                  child: CircleAvatar(
                    maxRadius: 24,
                    backgroundColor: Colors.grey.withOpacity(0.4),
                    child: Icon(Icons.pause, color: Colors.white),
                  ),
                ),
              ),
            ),
          Positioned(
              right: 10,
              bottom: MediaQuery.of(context).size.height * 0.15,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.3,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                         Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: ProfileTickTok(),
                                isIos: true,
                                duration: Duration(milliseconds: 1600)));
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        maxRadius: 26,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Icon(
                      isLoving ? Icons.favorite : Icons.favorite_border,
                      color: isLoving ? Color(0xFFEA475A) : Colors.white,
                      size: 24,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                        onTap: () {
                          _Comments();
                        },
                        child: Icon(
                          Icons.message,
                          color: Colors.white,
                          size: 24,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Icon(
                      Icons.reply,
                      color: Colors.white,
                      size: 24,
                    ),
                  ],
                ),
              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF765CF4),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildVideoPlayer(int index) {
    final VideoPlayerController? controller = controllers[index];

    return controller != null && controller.value.isInitialized
        ? GestureDetector(
            onDoubleTap: () {
              setState(() {
                isLoving = !isLoving;
              });
            },
            onTap: () {
              _stopCurrentVideo();
              setState(() {
                videoStoped = true;
              });
            },
            child: AspectRatio(
              aspectRatio: controller.value.aspectRatio,
              child: VideoPlayer(controller),
            ),
          )
        : Center(
            child: CircularProgressIndicator(),
          );
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller?.dispose();
    }
    _pageController.dispose();
    super.dispose();
  }
}
