import 'package:flutter/material.dart';
import 'package:plantapp/View/home_page.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return TheResponsiveBuilder(
      builder: (BuildContext , Orientation , ScreenType ) {
        return MaterialApp(

            debugShowCheckedModeBanner: false,
            title: 'Plant App',
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
                fontFamily: 'Poppins'
            ),
            home: const HomePage()
        );
      },

    );
  }
}

