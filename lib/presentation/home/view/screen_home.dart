import 'package:flagify/core/colors/colors.dart';
import 'package:flagify/core/constants/error_constants.dart';
import 'package:flagify/core/theme/theme.dart';
import 'package:flagify/presentation/home/application/home_bloc.dart';
import 'package:flagify/presentation/home/application/home_utils.dart';
import 'package:flagify/presentation/widgets/shimmer_container.dart';
import 'package:flagify/presentation/widgets/widget_error_view.dart';
import 'package:flagify/presentation/widgets/widget_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> with HomeProperties {
  @override
  void initState() {
    initFunction();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Flagify")),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.isLoading) {
              return ShimmerList();
            }

            if (state.isError) {
              return WidgetErrorView(
                  errorMessage: state.errorMessage, onRetry: onRefresh);
            }

            return _getBodyHomePage(state, context);
          },
        ));
  }

  Widget _getBodyHomePage(HomeState state, BuildContext context) {
    return Column(children: [
      if (!state.isConnected)
        Container(
            width: double.infinity,
            color: kToasterRedColor,
            padding: EdgeInsets.symmetric(vertical: 3),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(Icons.signal_wifi_connected_no_internet_4_rounded,
                  color: Colors.white),
              const SizedBox(width: 5),
              Text(noInternetMessage, style: TextStyle(color: kWhiteColor))
            ])),
      SizedBox(height: 10),
      WidgetSearchBar(
          searchController: searchController,
          onChanged: (query) => filterCountries(state.countriesList, query),
          hintText: 'Search Countries',
          prefixIcon:
              Icon(Icons.search, color: Theme.of(context).primaryColor)),
      SizedBox(height: 10),
      Expanded(
          child: SmartRefresher(
        physics: const BouncingScrollPhysics(),
        header: const ClassicHeader(),
        controller: refreshController,
        onRefresh: onRefresh,
        child: ListView.builder(
            controller: scrollController,
            shrinkWrap: true,
            itemCount: state.filterCountriesList.length,
            padding: EdgeInsets.symmetric(horizontal: 10),
            itemBuilder: (BuildContext context, int index) {
              final country = state.filterCountriesList[index];
              return Card(
                  child: ListTile(
                      leading: Text(country.emoji),
                      title: Text(country.name, style: textTheme.bodyLarge),
                      subtitle:
                          Text(country.code, style: textTheme.bodyMedium)));
            }),
      )),
    ]);
  }
}
