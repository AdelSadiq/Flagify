import 'package:flagify/config/client/graphql_repo.dart';
import 'package:flagify/core/constants/error_constants.dart';
import 'package:flagify/home/domain/entities/country_model/country_model.dart';
import 'package:injectable/injectable.dart';

abstract class RemoteListDataSource {
  Future<List<CountryModel>> fetchCountryList();
}

@LazySingleton(as: RemoteListDataSource)
class RemoteListDataSourceImpl implements RemoteListDataSource {
  final GraphQLRepo graphQLRepo = GraphQLRepo();
  RemoteListDataSourceImpl();

  @override
  Future<List<CountryModel>> fetchCountryList() async {
    String countriesListQuery = '''
    query {
      countries {
        code
        name
        emoji
      }
    }
    ''';

    final response = await graphQLRepo.get(query: countriesListQuery);

    if (response.hasException) {
      throw Exception(errorMessage);
    }

    final List<CountryModel> countriesList =
        List<Map<String, dynamic>>.from(response.data?['countries'] ?? [])
            .map(CountryModel.fromJson)
            .toList();
    return countriesList;
  }
}
