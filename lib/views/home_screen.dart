import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/cat_view_model.dart';

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
              onPressed: () => context.read<CatViewModel>().fetchCatImage(),
              child: const Text('Load Cat Image'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pagination'),
              child: const Text('Go to Pagination'),
            ),
            const SizedBox(height: 20),
            Consumer<CatViewModel>(
              builder: (context, vm, child) {
                if (vm.isLoading) {
                  return const CircularProgressIndicator();
                }
                if (vm.error != null) {
                  return Text('Error: ${vm.error}');
                }
                if (vm.catImage != null) {
                  return Image.network(vm.catImage!.url, height: 300);
                }
                return const Text('Press the button to load a cat image');
              },
            ),
          ],
        ),
      ),
    );
  }
}