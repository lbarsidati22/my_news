// import 'package:connectivity_plus/connectivity_plus.dart';

// import 'package:my_news/config/enum/category_type_news.dart';
// import 'package:my_news/data/api/news_api.dart';
// import 'package:my_news/data/model/result_api.dart';

// class NewsApiReposory {
//   final NewsApi newsApi;
//   NewsApiReposory({
//     required this.newsApi,
//   });
//   Future<ResultApi> getNews(
//       {required CategoryTypeNews categoryTypeNews}) async {
//     final connectivityResult = await (Connectivity().checkConnectivity());
//     if (connectivityResult != ConnectivityResult.none) {
//       ResultApi resultApi =
//           await newsApi.getNews(categoryTypeNews: categoryTypeNews);
//       if (resultApi.isDone) {
//         return ResultApi(isDone: true, resultOrError: resultOrError);
//       } else {
//         return resultApi;
//       }
//     } else {
//       return ResultApi(isDone: false, resultOrError: 'no internet here');
//     }
//   }
// }
