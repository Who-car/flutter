import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dotnet_cw/bloc/cat_bloc.dart';
import 'package:dotnet_cw/bloc/cat_event.dart';
import 'package:dotnet_cw/repositories/cat_repository.dart';
import 'package:dotnet_cw/use_cases/fetch_cat_gifs.dart';
import 'package:dotnet_cw/use_cases/fetch_cat_image.dart';
import 'package:dotnet_cw/views/home_screen.dart';
import 'package:dotnet_cw/views/pagination_screen.dart';

void main() {
  final repository = CatRepositoryImpl();
  final fetchCatImageUseCase = FetchCatImageUseCase(repository);
  final fetchCatGifsUseCase = FetchCatGifsUseCase(repository);
  final catBloc = CatBloc(
    fetchCatImageUseCase: fetchCatImageUseCase,
    fetchCatGifsUseCase: fetchCatGifsUseCase,
  );

  runApp(
    BlocProvider(
      create: (_) => catBloc..add(const CatEvent.initialize()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/pagination': (context) => const PaginationScreen(),
      },
    );
  }
}