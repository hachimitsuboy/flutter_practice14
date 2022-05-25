// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hotels _$HotelsFromJson(Map<String, dynamic> json) => Hotels(
      hotels: (json['hotels'] as List<dynamic>)
          .map((e) => Hotel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HotelsToJson(Hotels instance) => <String, dynamic>{
      'hotels': instance.hotels.map((e) => e.toJson()).toList(),
    };

Hotel _$HotelFromJson(Map<String, dynamic> json) => Hotel(
      hotel: HotelBasicInfo.fromJson(json['hotel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HotelToJson(Hotel instance) => <String, dynamic>{
      'hotel': instance.hotel,
    };

HotelBasicInfo _$HotelBasicInfoFromJson(Map<String, dynamic> json) =>
    HotelBasicInfo(
      hotelBasicInfo:
          HotelModel.fromJson(json['hotelBasicInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HotelBasicInfoToJson(HotelBasicInfo instance) =>
    <String, dynamic>{
      'hotelBasicInfo': instance.hotelBasicInfo,
    };

HotelModel _$HotelModelFromJson(Map<String, dynamic> json) => HotelModel(
      hotelName: json['hotelName'] as String?,
      hotelInformationUrl: json['hotelInformationUrl'] as String?,
      hotelSpecial: json['hotelSpecial'] as String?,
      hotelImageUrl: json['hotelImageUrl'] as String?,
    );

Map<String, dynamic> _$HotelModelToJson(HotelModel instance) =>
    <String, dynamic>{
      'hotelName': instance.hotelName,
      'hotelInformationUrl': instance.hotelInformationUrl,
      'hotelSpecial': instance.hotelSpecial,
      'hotelImageUrl': instance.hotelImageUrl,
    };
