// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../SingInSignOut/SISO.dart';

import 'Pages/PagesOne.dart';
import 'Pages/PagesThree.dart';
import 'Pages/PagesTwo.dart';

class Advanpages extends StatefulWidget {
  const Advanpages({super.key});

  @override
  State<Advanpages> createState() => _AdvanpagesState();
}

class _AdvanpagesState extends State<Advanpages> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Запускаем таймер, который будет переключать страницы каждые 3 секунды
    _timer = Timer.periodic(const Duration(seconds: 8), (timer) {
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      _pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Отменяем таймер при уничтожении виджета
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: const SISO(),
                        isIos: true,
                        duration: const Duration(milliseconds: 1600)));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.04,
                alignment: Alignment.centerRight,
                child: const Text(
                  'Skip   >',
                  style: TextStyle(fontSize: 18, color: Color(0xFFE1DFEC)),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.66,
              child: Expanded(
                child: PageView(
                  controller: _pageController,
                  children: const [
                    PageOne(),
                    PageTwo(),
                    PageThree(),
                  ],
                  onPageChanged: (int page) {
                    setState(() {
                      currentPage = page;
                    });
                  },
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (currentPage != 0) {
                        setState(() {
                          currentPage -= 1;
                          _pageController.animateToPage(
                            currentPage,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        });
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentPage != 0
                              ? const Color(0xFFE8E5FF)
                              : Colors.transparent),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: currentPage != 0
                            ? const Color(0xFF9489F9)
                            : Colors.transparent,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                        children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          width: currentPage == index ? 30 : 15,
                          height: 5,
                          decoration: BoxDecoration(
                              color: currentPage == index
                                  ? const Color(0xFF5753F5)
                                  : const Color(0xFFE7E3FE),
                              borderRadius: BorderRadius.circular(14)),
                        ),
                      ),
                    )),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (currentPage < 2) {
                        setState(() {
                          currentPage += 1;
                          _pageController.animateToPage(
                            currentPage,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        });
                      } else {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: const SISO(),
                                isIos: true,
                                duration: const Duration(milliseconds: 1600)));
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFF695CF4)),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color(0xFFD7CEF8),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
