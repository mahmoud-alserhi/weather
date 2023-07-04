//
// import '../../../../helpers/helpers.dart';
// import '../../../apis/api_settings.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// class SearchApiController with Helpers{
//
//   Future<List<SearchModel>> searchProducts() async {
//     var url = Uri.parse(ApiSettings.search);
//     var response = await http.get(url,
//       // headers: headers
//     );
//
//     // debugPrint('mmm1=>${response.statusCode}');
//     // debugPrint('mmm1=>${response.body}');
//     if (response.statusCode == 200) {
//       List<SearchModel> list=[];
//       var baseResponse = jsonDecode(response.body)['data'] as List;
//       baseResponse.forEach((element) {
//         var object = SearchModel.fromJson(element);
//         list.add(object);
//       });
//       return list;
//     }else{
// /////////////////
//     }
//     return [];
//   }
//
// }