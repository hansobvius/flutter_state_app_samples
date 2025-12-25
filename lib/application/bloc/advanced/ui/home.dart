import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_app_samples/application/bloc/advanced/model/counter_model.dart';

import '../view_model/bloc_home_view_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            BlocBuilder<BlocHomeViewModel, CounterModel>(
              bloc: BlocHomeViewModel.blocHomeViewModelInstance,
              builder: (context, value) {
                return Column(
                  mainAxisAlignment: .center,
                  children: [
                    Text(
                      value.title == ""
                          ? 'You have pushed the button this many times:'
                          : value.title,
                    ),
                    Text(
                      '${value.counterAmount}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                );

                // return Text(
                //   '$value',
                //   style: Theme.of(context).textTheme.headlineMedium,
                // );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: BlocHomeViewModel.blocHomeViewModelInstance.increaseCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
