import 'package:flutter/material.dart';
// import 'package:state_app_samples/application/mobx/simple/ui/home.dart';
import 'package:state_app_samples/application/mobx/advanced/ui/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MobxHomePage(),
    );
  }
}
