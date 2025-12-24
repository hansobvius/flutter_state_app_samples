import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../view_model/mobx_home_view_model.dart';

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
        child: Builder(
          builder: (context) {
            return Observer(
              builder: (context) {
                return Column(
                  mainAxisAlignment: .center,
                  children: [
                    Text(_mobxHomeViewModel.counterModel.title == ""
                        ? 'You have pushed the button this many times:'
                        : _mobxHomeViewModel.counterModel.title),
                    Text(
                      '${_mobxHomeViewModel.counterModel.counterAmount}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    )
                  ],
                );
              }
            );
          }
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