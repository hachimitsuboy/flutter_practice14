import 'package:json_annotation/json_annotation.dart';

part 'hotel.g.dart';

@JsonSerializable()
class HotelModel {
  final String? hotelName;
  final String? hotelInformationUrl;
  final String? hotelSpecial;
  final String? hotelImageUrl;

  HotelModel({
    required this.hotelName,
    required this.hotelInformationUrl,
    required this.hotelSpecial,
    required this.hotelImageUrl,
  });

  factory HotelModel.fromJson(Map<String, dynamic> json) => _$HotelModelFromJson(json);
  Map<String, dynamic> toJson() => _$HotelModelToJson(this);

}

@JsonSerializable(explicitToJson: true) //explicitToJsonとは？
class Hotels {
  List<HotelModel> list = [];
  Hotels({required this.list});

  factory Hotels.fromJson(Map<String, dynamic>json) => _$HotelsFromJson(json);

  Map<String, dynamic> toJson() => _$HotelsToJson(this);
}


