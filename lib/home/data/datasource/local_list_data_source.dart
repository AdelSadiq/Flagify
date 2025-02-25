import 'package:flagify/core/constants/hive_box_keys.dart';
import 'package:flagify/home/domain/entities/country_model/country_model.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

abstract class LocalListDataSource {
  Future<List<CountryModel>> getCountryListFromDb();
  Future<void> insertCountryList(List<CountryModel> countryList);
  Future<void> addToFavorites(CountryModel countryList);
  Future<void> removeFromFavorites(CountryModel countryList);
  Future<List<CountryModel>> getFavoritesList();
}

@LazySingleton(as: LocalListDataSource)
class LocalListDataSourceImpl implements LocalListDataSource {
  @override
  Future<List<CountryModel>> getCountryListFromDb() async {
    final box = await Hive.openBox<CountryModel>(countryKey);
    return box.isNotEmpty ? box.values.toList() : [];
  }

  @override
  Future<void> insertCountryList(List<CountryModel> countriesList) async {
    final box = await Hive.openBox<CountryModel>(countryKey);
    await box.clear();
    await box.addAll(countriesList);
  }

  @override
  Future<void> addToFavorites(CountryModel favorites) async {
    final box = await Hive.openBox<CountryModel>(favoritesKey);
    box.isEmpty
        ? await box.addAll([favorites.copy])
        : await box.add(favorites.copy);
  }

  @override
  Future<void> removeFromFavorites(CountryModel favorites) async {
    final box = await Hive.openBox<CountryModel>(favoritesKey);
    List<CountryModel> list = [];
    list = box.values.toList();
    list.removeWhere((e) => e.name == favorites.name);
    box.clear();
    await box.addAll(list);
  }

  @override
  Future<List<CountryModel>> getFavoritesList() async {
    final box = await Hive.openBox<CountryModel>(favoritesKey);
    return box.isNotEmpty ? box.values.toList() : [];
  }
}
