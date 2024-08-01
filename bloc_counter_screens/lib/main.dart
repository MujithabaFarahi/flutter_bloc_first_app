import 'package:bloc_tutorial/logic/cubit/counter_cubit.dart';
import 'package:bloc_tutorial/presentation/router/app_router.dart';
import 'package:bloc_tutorial/presentation/screens/home_screen.dart';
import 'package:bloc_tutorial/presentation/screens/second_screen.dart';
import 'package:bloc_tutorial/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  // final CounterCubit _counterCubit = CounterCubit();
  final AppRouter _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: _appRouter.onGenerateRoute,

        // routes: {
        //   '/': (context) => BlocProvider.value(
        //         value: _counterCubit,
        //         child: const HomeScreen(
        //             title: "Home Screen", color: Colors.blueAccent),
        //       ),
        //   '/second': (context) => BlocProvider.value(
        //         value: _counterCubit,
        //         child: const SecondScreen(
        //             title: "Second Screen", color: Colors.redAccent),
        //       ),
        //   '/third': (context) => BlocProvider.value(
        //         value: _counterCubit,
        //         child: const ThirdScreen(
        //             title: "Third Screen", color: Colors.greenAccent),
        //       ),
        // },
      ),
    );
  }
}
