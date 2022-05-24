
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_image_keybord/model/hotel.dart';
import 'package:http/http.dart' as http;

final inputWordProvider = StateProvider((ref) => "");

final hotelsProvider = FutureProvider<List<HotelModel>>((ref) async{
  final keyWord = ref.watch(inputWordProvider);

  final url = "https://app.rakuten.co.jp/services/api/Travel/KeywordHotelSearch/20170426?format=json&applicationId=1044664943234046231&keyword"+"&$keyWord";
  final uri = Uri.parse(url);
  final response = await http.get(uri);

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
  }


});