import 'dart:async';

import 'package:flagify/home/domain/entities/country_model/country_model.dart';
import 'package:flagify/home/presentation/bloc/home_bloc.dart';
import 'package:flagify/home/presentation/screens/screen_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

mixin HomeProperties on State<ScreenHome> {
  final connectionChecker = InternetConnectionChecker.instance;
  TextEditingController searchController = TextEditingController();
  late HomeBloc homeBloc;
  Timer? debounce;
  RefreshController refreshController = RefreshController();
  ScrollController scrollController = ScrollController();
}

extension HomeUtils on HomeProperties {
  void initFunction() {
    homeBloc = BlocProvider.of<HomeBloc>(context);
    connectionChecker.onStatusChange.listen(
      (InternetConnectionStatus status) {
        if (status == InternetConnectionStatus.connected) {
          homeBloc.add(const HomeEvent.setIsConnected(isConnected: true));
          return;
        }
        homeBloc.add(const HomeEvent.setIsConnected(isConnected: false));
      },
    );

    homeBloc.add(const HomeEvent.getCountriesList());
    homeBloc.add(const HomeEvent.getFavoritesList());
  }

  void filterCountries(List<CountryModel> countryList, String query) {
    if (debounce?.isActive ?? false) debounce!.cancel();

    debounce = Timer(Duration(milliseconds: 100), () {
      List<CountryModel> list = countryList.where((country) {
        return country.name.toLowerCase().contains(query.toLowerCase()) ||
            country.code.toLowerCase().contains(query.toLowerCase()) ||
            country.emoji.contains(query);
      }).toList();
      homeBloc.add(HomeEvent.setFilteredList(filteredList: list));
    });
  }

  void onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    homeBloc.add(const HomeEvent.getCountriesList());
    searchController.text = "";
    refreshController.refreshCompleted();
  }
}
