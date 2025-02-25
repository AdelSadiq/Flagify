import 'package:dartz/dartz.dart';
import 'package:flagify/config/failures/main_failures.dart';
import 'package:flagify/home/domain/entities/country_model/country_model.dart';

abstract class FavoritesService {
  Future<Either<MainFailures, List<CountryModel>>> getFavoritesList();
  Future<Either<MainFailures, bool>> addToFavorites(
      {required CountryModel favorite});
  Future<Either<MainFailures, bool>> removeFromFavorites(
      {required CountryModel favorite});
}
