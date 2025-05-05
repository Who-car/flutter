import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dotnet_cw/bloc/cat_event.dart';
import 'package:dotnet_cw/bloc/cat_state.dart';
import 'package:dotnet_cw/use_cases/fetch_cat_gifs.dart';
import 'package:dotnet_cw/use_cases/fetch_cat_image.dart';

class CatBloc extends Bloc<CatEvent, CatState> {
  final FetchCatImageUseCase fetchCatImageUseCase;
  final FetchCatGifsUseCase fetchCatGifsUseCase;

  CatBloc({
    required this.fetchCatImageUseCase,
    required this.fetchCatGifsUseCase,
  }) : super(const CatState.normal()) {
    on<Initialize>(_onInitialize);
    on<FetchCatImage>(_onFetchCatImage);
    on<FetchCatGifs>(_onFetchCatGifs);
  }

  void _onInitialize(Initialize event, Emitter<CatState> emit) {
    emit(const CatState.normal());
  }

  Future<void> _onFetchCatImage(FetchCatImage event, Emitter<CatState> emit) async {
    emit(const CatState.loading());
    try {
      final catImage = await fetchCatImageUseCase.execute();
      emit(CatState.normal(
        data1: catImage,
        data2: state.maybeWhen(
          normal: (data1, isLoading1, data2, isLoading2) => data2,
          orElse: () => <String>[],
        ),
      ));
    } catch (e) {
      emit(CatState.error('Failed to load cat image: $e'));
    }
  }

  Future<void> _onFetchCatGifs(FetchCatGifs event, Emitter<CatState> emit) async {
    emit(const CatState.loading());
    try {
      final newGifs = await fetchCatGifsUseCase.execute(event.page, event.limit);
      final currentGifs = state.maybeWhen(
        normal: (data1, isLoading1, data2, isLoading2) => data2,
        orElse: () => <String>[],
      );
      emit(CatState.normal(
        data1: state.maybeWhen(
          normal: (data1, isLoading1, data2, isLoading2) => data1,
          orElse: () => null,
        ),
        data2: [...currentGifs, ...newGifs],
      ));
    } catch (e) {
      emit(CatState.error('Failed to load cat GIFs: $e'));
    }
  }
}