import 'package:flagify/config/failures/main_failures.dart';
import 'package:flagify/core/constants/error_constants.dart';
import 'package:flagify/home/domain/entities/country_model/country_model.dart';
import 'package:flagify/home/domain/usecases/add_to_favorites_use_case.dart';
import 'package:flagify/home/domain/usecases/get_countries_list_use_case.dart';
import 'package:flagify/home/domain/usecases/get_favorites_list_use_case.dart';
import 'package:flagify/home/domain/usecases/remove_from_favorites_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetCountriesListUseCase _getCountriesListUseCase;
  final AddToFavoritesUseCase _addToFavoritesUseCase;
  final RemoveFromFavoritesUseCase _removeFromFavoritesUseCase;
  final GetFavoritesListUseCase _getFavoritesListUseCase;
  HomeBloc(this._getCountriesListUseCase, this._addToFavoritesUseCase,
      this._removeFromFavoritesUseCase, this._getFavoritesListUseCase)
      : super(HomeState.initial()) {
    on<_GetCountriesList>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final data = await _getCountriesListUseCase.execute();
      final newState = data.fold(
          (MainFailures l) => state.copyWith(
              errorMessage: l.message ?? errorMessage,
              isError: true,
              isLoading: false),
          (List<CountryModel> data) => state.copyWith(
              countriesList: data,
              filterCountriesList: data,
              isLoading: false));
      emit(newState);
    });

    on<_SetIsConnected>((event, emit) async {
      emit(state.copyWith(isConnected: event.isConnected));
    });

    on<_SetFilteredList>((event, emit) async {
      emit(state.copyWith(filterCountriesList: event.filteredList));
    });

    on<_AddToFavorites>((event, emit) async {
      final data =
          await _addToFavoritesUseCase.execute(favorite: event.country);
      final newState = data.fold(
          (MainFailures l) => state.copyWith(
              errorMessage: l.message ?? errorMessage,
              isError: true,
              isLoading: false), (bool data) {
        List<CountryModel> list = [];
        list.addAll(state.favoritesList);
        list.add(event.country);
        return state.copyWith(favoritesList: list);
      });
      emit(newState);
    });

    on<_RemoveFromFavorites>((event, emit) async {
      final data =
          await _removeFromFavoritesUseCase.execute(favorite: event.country);
      final newState = data.fold(
          (MainFailures l) => state.copyWith(
              errorMessage: l.message ?? errorMessage,
              isError: true,
              isLoading: false), (bool data) {
        List<CountryModel> list = [];
        list.addAll(state.favoritesList);
        list.removeWhere((e) => e.name == event.country.name);
        return state.copyWith(favoritesList: list);
      });
      emit(newState);
    });

    on<_GetFavoritesList>((event, emit) async {
      final data = await _getFavoritesListUseCase.execute();
      final newState = data.fold(
          (MainFailures l) => state.copyWith(
              errorMessage: l.message ?? errorMessage,
              isError: true,
              isLoading: false),
          (List<CountryModel> data) => state.copyWith(favoritesList: data));
      emit(newState);
    });
  }
}
