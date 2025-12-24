import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:state_app_samples/application/mobx/view_model/mobx_home_view_model.dart';

class MobxHomePage extends StatefulWidget {
  const MobxHomePage({super.key});

  @override
  State<MobxHomePage> createState() => _MobxHomePageState();
}

class _MobxHomePageState extends State<MobxHomePage> {

  final MobxHomeViewModel _mobxHomeViewModel = MobxHomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("MobX Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Observer(
              builder: (context) {
                return Text(
                  '${_mobxHomeViewModel.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              }
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _mobxHomeViewModel.increaseCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}