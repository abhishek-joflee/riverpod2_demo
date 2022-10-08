import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'my_providers.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ColoredBox(
        color: Color.fromARGB(255, 141, 113, 202),
        child: Center(
          child: ClockWidget(),
        ),
      ),
    );
  }
}

class ClockWidget extends ConsumerWidget {
  const ClockWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formatter = ref.watch(timeFormatterProvider);
    final time = ref.watch(clockProvider);
    print('clock widget build with time: $time');
    return Text(
      formatter.format(time),
      style: Theme.of(context).textTheme.headline1,
    );
  }
}
