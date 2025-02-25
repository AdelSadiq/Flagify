import 'package:dartz/dartz.dart';
import 'package:flagify/config/failures/main_failures.dart';
import 'package:flagify/core/constants/error_constants.dart';
import 'package:flagify/home/data/datasource/local_list_data_source.dart';
import 'package:flagify/home/data/datasource/remote_list_data_source.dart';
import 'package:flagify/home/domain/entities/country_model/country_model.dart';
import 'package:flagify/home/domain/repository/country_service.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@LazySingleton(as: CountryService)
class CountryRepo implements CountryService {
  final LocalListDataSource localDb;
  final RemoteListDataSource repository;
  CountryRepo(this.localDb, this.repository);

  @override
  Future<Either<MainFailures, List<CountryModel>>> getCountriesList() async {
    try {
      final bool isConnected =
          await InternetConnectionChecker.instance.hasConnection;

      if (!isConnected) {
        return Right(await localDb.getCountryListFromDb());
      }

      final countriesList = await repository.fetchCountryList();
      localDb.insertCountryList(countriesList);
      return Right(countriesList);
    } catch (e) {
      return Left(MainFailures.exception(message: errorMessage));
    }
  }
}
