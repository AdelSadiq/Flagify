import 'package:dartz/dartz.dart';
import 'package:flagify/data/core/failures/main_failures.dart';
import 'package:flagify/data/models/country_model/country_model.dart';

abstract class CountryService {
  Future<Either<MainFailures, List<CountryModel>>> getCountriesList();
}
