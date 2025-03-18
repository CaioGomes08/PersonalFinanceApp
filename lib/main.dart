import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:personal_finance/service_locator/service_locator.dart';
import 'package:personal_finance/views/home.dart';

void main() {
  ServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(navigationStore: GetIt.I.get()),
    );
  }
}
