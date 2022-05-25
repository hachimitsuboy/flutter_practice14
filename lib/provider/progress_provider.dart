import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_image_keybord/model/hotel.dart';
import 'package:http/http.dart' as http;

final inputWordProvider = StateProvider((ref) => "");

final hotelsProvider = FutureProvider<List<Hotel>>((ref) async {
  final keyWord = ref.watch(inputWordProvider);
  print(keyWord);
  List<Hotel> listHotels = [];

  final url =
      "https://app.rakuten.co.jp/services/api/Travel/KeywordHotelSearch/20170426?format=json&applicationId=1044664943234046231&keyword=" +
          "$keyWord";
  final uri = Uri.parse(url);
  print(uri);
  final response = await http.get(uri);

  if (response.statusCode == 200) {
    //ネスト構造のJson取得の際は、Listと要素を分けてModel化する
    print(jsonDecode(response.body));
    listHotels = Hotels.fromJson(jsonDecode(response.body)).hotels;
  }

  listHotels.forEach((element) {
    print("ホテル名: ${element.hotel.hotelBasicInfo.hotelName} / ホテルの概要: ${element.hotel.hotelBasicInfo.hotelSpecial} / ホテルの画像URL: ${element.hotel.hotelBasicInfo.hotelImageUrl}");
  });

  return listHotels;
});
