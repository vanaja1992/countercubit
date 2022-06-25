import 'package:countercubit/src/features/pages/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter Cubit"),
        ),
        floatingActionButton: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<CounterCubit>().increment();
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 15,
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<CounterCubit>().decrement();
              },
              child: const Icon(Icons.remove),
            ),
          ],
        ),
        body: BlocBuilder<CounterCubit, int>(
          builder: (context, count) => Center(
            child: Text(
              ' Value: $count',
              style: const TextStyle(fontSize: 24),
            ),
          ),
        ));
  }
}
