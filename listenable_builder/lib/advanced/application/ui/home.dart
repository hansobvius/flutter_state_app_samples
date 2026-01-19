import 'package:flutter/material.dart';
import '../view_model/bloc_home_view_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ListenableBuilderHomeViewModel listenableBuilderHomeViewModel = ListenableBuilderHomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Advanced BloC Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            ListenableBuilder(
              listenable: listenableBuilderHomeViewModel, 
              builder: (BuildContext context, Widget? child) {
                return Column(
                  mainAxisAlignment: .center,
                  children: [
                    Text(
                      listenableBuilderHomeViewModel.counterModel.title == ""
                          ? 'You have pushed the button this many times:'
                          : listenableBuilderHomeViewModel.counterModel.title,
                    ),
                    Text(
                      '${listenableBuilderHomeViewModel.counterModel.counterAmount}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                );
              })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: listenableBuilderHomeViewModel.increaseCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
