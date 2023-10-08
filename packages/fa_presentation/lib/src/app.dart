import 'package:fa_domain/fa_domain.dart';
import 'package:fa_presentation/src/cubits/home_page_cubit.dart';
import 'package:fa_presentation/src/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomePageCubit>(
          create: (context) => HomePageCubit(
            todoRepository: locator<TodoRepository>(),
            insertTodoUseCase: locator<InsertTodoUseCase>(),
            getTodosUseCase: locator<GetTodosUseCase>(),
          ),
        ),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
