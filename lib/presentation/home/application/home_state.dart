part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required bool isError,
    required String errorMessage,
    required List<CountryModel> countriesList,
    // UI state
    required bool isConnected,
    required List<CountryModel> filterCountriesList,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
      isLoading: false,
      isError: false,
      countriesList: [],
      errorMessage: "",
      isConnected: true,
      filterCountriesList: []);
}
