import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movies_appgain_io/app/constants.dart';

Future<void> configureEnvironment() async =>
    await dotenv.load(fileName: Constants.productionEnvironment);
