import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dotnet_cw/bloc/cat_bloc.dart';
import 'package:dotnet_cw/bloc/cat_event.dart';
import 'package:dotnet_cw/bloc/cat_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Single Cat Image')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.read<CatBloc>().add(const FetchCatImage()),
              child: const Text('Load Cat Image'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pagination'),
              child: const Text('Go to Pagination'),
            ),
            const SizedBox(height: 20),
            BlocBuilder<CatBloc, CatState>(
              builder: (context, state) {
                return state.when(
                  normal: (data1, isLoading1, data2, isLoading2) => data1 != null
                      ? Image.network(data1.url, height: 300)
                      : const Text('Press the button to load a cat image'),
                  loading: () => const CircularProgressIndicator(),
                  error: (message) => Text('Error: $message'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}