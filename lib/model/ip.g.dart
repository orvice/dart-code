// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IP _$IPFromJson(Map<String, dynamic> json) => IP(
      json['ip'] as String,
      json['org'] as String,
    )
      ..city = json['city'] as String
      ..region = json['region'] as String;

Map<String, dynamic> _$IPToJson(IP instance) => <String, dynamic>{
      'city': instance.city,
      'region': instance.region,
      'ip': instance.ip,
      'org': instance.org,
    };
