import 'package:flutter/material.dart';
import 'package:myprovider/counterprovider.dart';
import 'package:myprovider/donetodoprovider.dart';
import 'package:provider/provider.dart';
import 'homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
    ChangeNotifierProvider(create: (context) => CounterProvider()),
    ChangeNotifierProvider(create: (context) => DoneTodoProvider()),
        ],
        child: MaterialApp(
          home: HomeScreen(),
        ));
  }
}
