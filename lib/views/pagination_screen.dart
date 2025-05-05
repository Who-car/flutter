import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/cat_view_model.dart';

class PaginationScreen extends StatefulWidget {
  const PaginationScreen({super.key});

  @override
  _PaginationScreenState createState() => _PaginationScreenState();
}

class _PaginationScreenState extends State<PaginationScreen> {
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 1;
  final int _limit = 3;

  @override
  void initState() {
    super.initState();
    context.read<CatViewModel>().catGifs.clear();
    context.read<CatViewModel>().fetchCatGifs(_currentPage, _limit);
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        loadMore();
      }
    });
  }
  
  void loadMore() {
    _currentPage++;
    context.read<CatViewModel>().fetchCatGifs(_currentPage, _limit);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lazy Loading Cat GIFs')),
      body: Consumer<CatViewModel>(
        builder: (context, vm, child) {
          if (vm.isLoading && vm.catGifs.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          if (vm.error != null) {
            return Center(child: Text('Error: ${vm.error}'));
          }
          return SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                ...vm.catGifs.asMap().entries.map((entry) {
                  final index = entry.key;
                  final gifUrl = entry.value;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      gifUrl,
                      height: 150,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  );
                }),
                if (vm.isLoading)
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  ),
                ElevatedButton(
                    onPressed: loadMore, 
                    child: Text('Load more!'))
              ],
            ),
          );
        },
      ),
    );
  }
}