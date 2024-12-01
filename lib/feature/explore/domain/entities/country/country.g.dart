// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      name: json['name'] as String,
      flag: json['flag'] as String,
      displayExchange: (json['displayExchange'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      code: json['code'] as String,
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'flag': instance.flag,
      'displayExchange': instance.displayExchange,
      'code': instance.code,
    };
