import 'package:flutter/material.dart';
import 'package:movies_appgain_io/app/app_entry_point.dart';
import 'package:movies_appgain_io/app/injection.dart';
import 'package:movies_appgain_io/app/pre_configs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureEnvironment();
  await configureDependencies();

  runApp(MoviesApp());
}
