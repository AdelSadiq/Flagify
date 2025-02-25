// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flagify/home/data/datasource/local_list_data_source.dart'
    as _i30;
import 'package:flagify/home/data/datasource/remote_list_data_source.dart'
    as _i24;
import 'package:flagify/home/data/repository/country_repo.dart' as _i645;
import 'package:flagify/home/data/repository/favorites_repo.dart' as _i382;
import 'package:flagify/home/domain/repository/country_service.dart' as _i793;
import 'package:flagify/home/domain/repository/favorites_service.dart' as _i801;
import 'package:flagify/home/domain/usecases/add_to_favorites_use_case.dart'
    as _i1055;
import 'package:flagify/home/domain/usecases/get_countries_list_use_case.dart'
    as _i992;
import 'package:flagify/home/domain/usecases/get_favorites_list_use_case.dart'
    as _i688;
import 'package:flagify/home/domain/usecases/remove_from_favorites_use_case.dart'
    as _i218;
import 'package:flagify/home/presentation/bloc/home_bloc.dart' as _i766;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i30.LocalListDataSource>(
        () => _i30.LocalListDataSourceImpl());
    gh.lazySingleton<_i24.RemoteListDataSource>(
        () => _i24.RemoteListDataSourceImpl());
    gh.lazySingleton<_i793.CountryService>(() => _i645.CountryRepo(
          gh<_i30.LocalListDataSource>(),
          gh<_i24.RemoteListDataSource>(),
        ));
    gh.lazySingleton<_i801.FavoritesService>(
        () => _i382.FavoritesRepo(gh<_i30.LocalListDataSource>()));
    gh.factory<_i1055.AddToFavoritesUseCase>(
        () => _i1055.AddToFavoritesUseCase(gh<_i801.FavoritesService>()));
    gh.factory<_i688.GetFavoritesListUseCase>(
        () => _i688.GetFavoritesListUseCase(gh<_i801.FavoritesService>()));
    gh.factory<_i218.RemoveFromFavoritesUseCase>(
        () => _i218.RemoveFromFavoritesUseCase(gh<_i801.FavoritesService>()));
    gh.factory<_i992.GetCountriesListUseCase>(
        () => _i992.GetCountriesListUseCase(gh<_i793.CountryService>()));
    gh.factory<_i766.HomeBloc>(() => _i766.HomeBloc(
          gh<_i992.GetCountriesListUseCase>(),
          gh<_i1055.AddToFavoritesUseCase>(),
          gh<_i218.RemoveFromFavoritesUseCase>(),
          gh<_i688.GetFavoritesListUseCase>(),
        ));
    return this;
  }
}
