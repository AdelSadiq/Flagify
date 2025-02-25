import 'package:dartz/dartz.dart';
import 'package:flagify/config/failures/main_failures.dart';
import 'package:flagify/core/constants/error_constants.dart';
import 'package:flagify/home/data/datasource/local_list_data_source.dart';
import 'package:flagify/home/domain/entities/country_model/country_model.dart';
import 'package:flagify/home/domain/repository/favorites_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: FavoritesService)
class FavoritesRepo implements FavoritesService {
  final LocalListDataSource localDb;
  FavoritesRepo(this.localDb);

  @override
  Future<Either<MainFailures, bool>> removeFromFavorites(
      {required CountryModel favorite}) async {
    try {
      await localDb.removeFromFavorites(favorite);
      return Right(true);
    } catch (e) {
      return Left(MainFailures.exception(message: errorMessage));
    }
  }

  @override
  Future<Either<MainFailures, bool>> addToFavorites(
      {required CountryModel favorite}) async {
    try {
      await localDb.addToFavorites(favorite);
      return Right(true);
    } catch (e) {
      return Left(MainFailures.exception(message: errorMessage));
    }
  }

  @override
  Future<Either<MainFailures, List<CountryModel>>> getFavoritesList() async {
    try {
      List<CountryModel> favoritesList = await localDb.getFavoritesList();
      return Right(favoritesList);
    } catch (e) {
      return Left(MainFailures.exception(message: errorMessage));
    }
  }
}
