// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flagify/data/domain/country_service.dart' as _i1008;
import 'package:flagify/data/infrastructure/country_impl.dart' as _i475;
import 'package:flagify/presentation/home/application/home_bloc.dart' as _i238;
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
    gh.lazySingleton<_i1008.CountryService>(() => _i475.CountryImpl());
    gh.factory<_i238.HomeBloc>(
        () => _i238.HomeBloc(gh<_i1008.CountryService>()));
    return this;
  }
}
