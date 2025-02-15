import 'dart:io';

import 'package:flagify/core/constants/hive_box_keys.dart';
import 'package:flagify/data/core/di/injectable.dart';
import 'package:flagify/data/models/country_model/country_model.dart';
import 'package:flagify/my_app.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  await configureInjection();

  WidgetsFlutterBinding.ensureInitialized();

  Directory document = await getApplicationDocumentsDirectory();
  Hive.init(document.path);
  Hive.registerAdapter(CountryModelAdapter());
  await Hive.openBox<dynamic>(boxKey);

  runApp(MyApp());
}
