import 'package:json_annotation/json_annotation.dart';

part 'hotel.g.dart';

@JsonSerializable(explicitToJson: true) //explicitToJsonとは？
class Hotels {
  List<Hotel> hotels;
  Hotels({required this.hotels});

  factory Hotels.fromJson(Map<String, dynamic>json) => _$HotelsFromJson(json);
  Map<String, dynamic> toJson() => _$HotelsToJson(this);
}

@JsonSerializable()
class Hotel {
  HotelBasicInfo hotel;

  Hotel({required this.hotel});

  factory Hotel.fromJson(Map<String, dynamic>json) => _$HotelFromJson(json);
  Map<String, dynamic> toJson() => _$HotelToJson(this);
}

@JsonSerializable()
class HotelBasicInfo {
  HotelModel hotelBasicInfo;

  HotelBasicInfo({required this.hotelBasicInfo});

  factory HotelBasicInfo.fromJson(Map<String, dynamic>json) => _$HotelBasicInfoFromJson(json);
  Map<String, dynamic> toJson() => _$HotelBasicInfoToJson(this);

}

@JsonSerializable()
class HotelModel {
  final String? hotelName;
  final String? hotelInformationUrl;
  final String? hotelSpecial;
  final String? hotelImageUrl;

  HotelModel({
    this.hotelName,
    this.hotelInformationUrl,
    this.hotelSpecial,
    this.hotelImageUrl,
  });

  factory HotelModel.fromJson(Map<String, dynamic> json) => _$HotelModelFromJson(json);
  Map<String, dynamic> toJson() => _$HotelModelToJson(this);

}


