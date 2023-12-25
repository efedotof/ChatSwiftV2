
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mychats2/ThemeMyApp/CustomTheme.dart';
import 'package:mychats2/ThemeMyApp/config.dart';
import 'Frontend/Advantages/Advantages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp( MyApp(

  )
    );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {
      });
    });
  }
  @override
  Widget build(BuildContext context) {
       SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: currentTheme.currentTheme == ThemeMode.dark
      ? CustomTheme.darkTheme.primaryColor
      : CustomTheme.lightTheme.primaryColor,
));
        return MaterialApp(
          theme: CustomTheme.lightTheme,
          darkTheme: CustomTheme.darkTheme,
          themeMode: currentTheme.currentTheme,
          initialRoute:  '/Registration',
          routes: {
            '/Registration': (context) => const Advanpages(),
  
          },
          debugShowCheckedModeBanner: false,  
    );
  }
}



