import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_model/riverpod_home_view_model.dart';

class HomePage extends ConsumerWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final advancedRiverpodViewModel = ref.watch(riverpodHomeViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Advanced Riverpod Example"),
      ),
      body: Center(
        child: Column(
              mainAxisAlignment: .center,
              children: [
                Text(
                  advancedRiverpodViewModel.title == ""
                      ? 'You have pushed the button this many times:'
                      : advancedRiverpodViewModel.title,
                ),
                Text(
                  '${advancedRiverpodViewModel.counterAmount}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ref.read(riverpodHomeViewModelProvider.notifier).increaseCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
