part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getCountriesList() = _GetCountriesList;

  // UI events
  const factory HomeEvent.setIsConnected({required bool isConnected}) =
      _SetIsConnected;

  const factory HomeEvent.setFilteredList(
      {required List<CountryModel> filteredList}) = _SetFilteredList;

  const factory HomeEvent.addToFavorites({required CountryModel country}) =
      _AddToFavorites;

  const factory HomeEvent.removeFromFavorites({required CountryModel country}) =
      _RemoveFromFavorites;

  const factory HomeEvent.getFavoritesList() = _GetFavoritesList;
}
