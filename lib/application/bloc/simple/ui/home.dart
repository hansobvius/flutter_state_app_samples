import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/bloc_home_view_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final BlocHomeViewModel _blocHomeViewModel = BlocHomeViewModel(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Simple BloC Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [ 
            const Text('You have pushed the button this many times:'),
            BlocBuilder(
              bloc: _blocHomeViewModel,
              builder: (context, value) {
                return Text(
                  '$value',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
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
