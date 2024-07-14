import 'package:flutter/material.dart';
import 'package:yly_app/screens/home_screen.dart';
void main()  {

  runApp(const NewsApp());
}

// Future<String> func2() async {
//   var answer = await create();
//   return 'my name is $answer';
//
// }
//
// Future<String> create()=>
//     Future.delayed(
//       const Duration(seconds: 1),
//           () => 'ahmed',
//     );

class NewsApp extends StatelessWidget{
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home : HomeScreen()
    );
  }
}