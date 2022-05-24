// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

Hotels _$HotelsFromJson(Map<String, dynamic> json) => Hotels(
      list: (json['list'] as List<dynamic>)
          .map((e) => HotelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HotelsToJson(Hotels instance) => <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };
