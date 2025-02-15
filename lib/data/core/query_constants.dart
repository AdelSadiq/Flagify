class Queries {
  static String countriesListQuery = '''
    query {
      countries {
        code
        name
        emoji
      }
    }
    ''';
}
