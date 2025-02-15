import 'package:dartz/dartz.dart';
import 'package:flagify/core/constants/error_constants.dart';
import 'package:flagify/core/constants/hive_box_keys.dart';
import 'package:flagify/data/core/client/graphql_repo.dart';
import 'package:flagify/data/core/failures/main_failures.dart';
import 'package:flagify/data/core/query_constants.dart';
import 'package:flagify/data/domain/country_service.dart';
import 'package:flagify/data/models/country_model/country_model.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@LazySingleton(as: CountryService)
class CountryImpl implements CountryService {
  @override
  Future<Either<MainFailures, List<CountryModel>>> getCountriesList() async {
    try {
      final box = await Hive.openBox<CountryModel>(countryKey);
      final bool isConnected =
          await InternetConnectionChecker.instance.hasConnection;
      if (!isConnected && box.isNotEmpty) {
        return Right(box.values.toList());
      }

      final QueryResult response =
          await GraphQLRepo().get(query: Queries.countriesListQuery);

      if (response.hasException) {
        return Left(
            MainFailures.exception(message: response.exception.toString()));
      }

      final List<CountryModel> countriesList =
          List<Map<String, dynamic>>.from(response.data?['countries'] ?? [])
              .map(CountryModel.fromJson)
              .toList();
      await box.clear();
      await box.addAll(countriesList);
      return Right(countriesList);
    } catch (e) {
      return Left(MainFailures.exception(message: errorMessage));
    }
  }
}
