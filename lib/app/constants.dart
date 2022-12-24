class Constants {
  static const developingEnvironment = "assets/environments/.env";
  static const productionEnvironment = "assets/environments/.env.prod";

  static const empty = "";
  static const emptyList = <String>[];
  static const falseData = false;
  static const zero = 0;
  static const doubleZero = 0.0;
  static const emptyIterable = Iterable.empty();

  static const bookOpacity = 0.08;

  static const homeIndex = 0;

  static const animationDuration = 1000;
  static const searchingDebounceDuration = 500;

  static get rightNow => DateTime.now();
}
