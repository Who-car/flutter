import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dotnet_cw/bloc/cat_bloc.dart';
import 'package:dotnet_cw/bloc/cat_event.dart';
import 'package:dotnet_cw/bloc/cat_state.dart';

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
    context.read<CatBloc>().add(FetchCatGifs(page: _currentPage, limit: _limit));
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        loadMore();
      }
    });
  }

  void loadMore() {
    _currentPage++;
    context.read<CatBloc>().add(FetchCatGifs(page: _currentPage, limit: _limit));
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
      body: BlocBuilder<CatBloc, CatState>(
        builder: (context, state) {
          return state.when(
            normal: (data1, isLoading1, data2, isLoading2) => SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  ...data2.map((gifUrl) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      gifUrl,
                      height: 150,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  )),
                  if (isLoading2)
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(),
                    ),
                  ElevatedButton(
                    onPressed: loadMore,
                    child: const Text('Load more!'),
                  ),
                ],
              ),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text('Error: $message')),
          );
        },
      ),
    );
  }
}