import 'package:dartz/dartz.dart';
import 'package:flagify/config/failures/main_failures.dart';
import 'package:flagify/home/domain/entities/country_model/country_model.dart';
import 'package:flagify/home/domain/repository/favorites_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class RemoveFromFavoritesUseCase {
  final FavoritesService _favoritesService;
  RemoveFromFavoritesUseCase(this._favoritesService);

  Future<Either<MainFailures, bool>> execute(
      {required CountryModel favorite}) async {
    return await _favoritesService.removeFromFavorites(favorite: favorite);
  }
}
