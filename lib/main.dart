import 'package:english/responsive/responsive_layout.dart';
import 'package:english/mainscreens/desktop.dart';
import 'package:english/mainscreens/mobile.dart';
import 'package:english/mainscreens/tablet.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final int article_name_in=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'English AI',
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan)),
      debugShowCheckedModeBanner: false,
      // home: splash(),
      home: Responsive_layout(
        mobileScaffold: MobilePage(title: 'mobilepage',article_name_in: article_name_in,), 
        tabletScaffold: tabletPage(title: 'tabletpage',), 
        desktopScaffold: DesktopPage(title: 'desktoppage',)),
    );
  }
}



