// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'har_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HarRequest _$HarRequestFromJson(Map<String, dynamic> json) {
  return HarRequest(
    method: json['method'] as String,
    url: json['url'] as String,
    headers: (json['headers'] as List)
        ?.map((e) =>
            e == null ? null : HarHeader.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$HarRequestToJson(HarRequest instance) =>
    <String, dynamic>{
      'method': instance.method,
      'url': instance.url,
      'headers': instance.headers,
    };
