import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  static const developingEnvironment = "assets/environments/.env";
  static const productionEnvironment = "assets/environments/.env.prod";

  static final baseUrl = dotenv.get('BASE_URL');
  static const apiKeyV3Auth = "622100ab57409eb1136e8113fc8c10ea";
  static const apiTimeOut = 60000;

  static const empty = "";
  static const emptyList = <String>[];
  static const falseData = false;
  static const zero = 0;

  static const bookOpacity = 0.08;

  static const homeIndex = 0;

  static const animationDuration = 1000;
  static const searchingDebounceDuration = 500;

  static get rightNow => DateTime.now();
}
