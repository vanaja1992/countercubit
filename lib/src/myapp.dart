import 'package:countercubit/src/features/pages/counter_cubit.dart';
import 'package:countercubit/src/features/pages/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Counter Cubit",
      theme: ThemeData(primaryColor: Colors.brown.shade300),
      home: BlocProvider(
          create: (_) => CounterCubit(), child: const CounterPage()),
    );
  }
}
