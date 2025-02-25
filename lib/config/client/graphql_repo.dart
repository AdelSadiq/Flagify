import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLRepo {
  final String apiUrl = "https://countries.trevorblades.com/";

  Future<dynamic> get({required String query}) async {
    GraphQLClient getClient() {
      final Link link = HttpLink(apiUrl);
      return GraphQLClient(cache: GraphQLCache(), link: link);
    }

    final QueryOptions options = QueryOptions(document: gql(query));
    final QueryResult response = await getClient().query(options);
    return response;
  }
}
