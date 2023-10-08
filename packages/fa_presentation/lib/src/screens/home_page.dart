import 'package:fa_domain/fa_domain.dart';
import 'package:fa_presentation/src/cubits/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var homePageCubit = BlocProvider.of<HomePageCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(
        child: BlocBuilder<HomePageCubit, List<Todo>>(
          builder: (context, state) {
            return ListView.builder(
                itemBuilder: (context, index) {
                  final item = state[index];
                  return ListTile(
                    title: Text('${item.id} ${item.title}'),
                    subtitle: Text(item.description),
                  );
                },
                itemCount: state.length);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          homePageCubit.insertTodo(
              title: 'Test', description: 'Test description');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
