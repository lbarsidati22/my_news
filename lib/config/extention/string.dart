extension AppString on String {
  String get baseUrl => 'newsapi.org/v2/$this';
  String get baseUrlWithEverything => 'everything'.baseUrl;
  String get baseUrlWithTopHeadline => 'top-headlines'.baseUrl;
  String get getApiKey => 'bbe42778b2a04297b21039c12c152aea';
}
