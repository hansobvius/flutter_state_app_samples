import 'package:flutter/material.dart';
import 'package:listenable_builder/simple/application/view_model/listenable_builder_home_view_model.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ListenableBuilderHomeViewModel _blocHomeViewModel = ListenableBuilderHomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Simple Listenable Builder Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [ 
            const Text('You have pushed the button this many times:'),
            ListenableBuilder(
              listenable: _blocHomeViewModel, 
              builder: (context, child) {
                return Text(
                  '${_blocHomeViewModel.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _blocHomeViewModel.increaseCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
