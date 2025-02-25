import 'package:dartz/dartz.dart';
import 'package:flagify/config/failures/main_failures.dart';
import 'package:flagify/home/domain/entities/country_model/country_model.dart';

abstract class CountryService {
  Future<Either<MainFailures, List<CountryModel>>> getCountriesList();
}
