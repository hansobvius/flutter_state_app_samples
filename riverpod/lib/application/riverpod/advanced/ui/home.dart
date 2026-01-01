// import 'package:flutter/material.dart';

// import '../view_model/riverpod_home_view_model.dart';

// class HomePage extends StatelessWidget {

//   HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text("Advanced MobX Example"),
//       ),
//       body: Center(
//         child: Observer(
//           builder: (context) {
//             return Column(
//               mainAxisAlignment: .center,
//               children: [
//                 Text(
//                   _mobxHomeViewModel.counterModel.title == ""
//                       ? 'You have pushed the button this many times:'
//                       : _mobxHomeViewModel.counterModel.title,
//                 ),
//                 Text(
//                   '${_mobxHomeViewModel.counterModel.counterAmount}',
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _mobxHomeViewModel.increaseCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
