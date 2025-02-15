import 'package:flagify/core/constants/error_constants.dart';
import 'package:flagify/data/core/failures/main_failures.dart';
import 'package:flagify/data/domain/country_service.dart';
import 'package:flagify/data/models/country_model/country_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final CountryService _countryService;
  HomeBloc(this._countryService) : super(HomeState.initial()) {
    on<_GetCountriesList>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final data = await _countryService.getCountriesList();
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
  }
}
