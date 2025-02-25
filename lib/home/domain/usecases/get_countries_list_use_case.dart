import 'package:dartz/dartz.dart';
import 'package:flagify/config/failures/main_failures.dart';
import 'package:flagify/home/domain/entities/country_model/country_model.dart';
import 'package:flagify/home/domain/repository/country_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCountriesListUseCase {
  final CountryService _countryService;
  GetCountriesListUseCase(this._countryService);

  Future<Either<MainFailures, List<CountryModel>>> execute() async {
    return await _countryService.getCountriesList();
  }
}
