// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'har_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HarResponse _$HarResponseFromJson(Map<String, dynamic> json) {
  return HarResponse(
    status: json['status'] as int,
    content:
        HarResponseContent.fromJson(json['content'] as Map<String, dynamic>),
    headers: (json['headers'] as List<dynamic>)
        .map((e) => HarHeader.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$HarResponseToJson(HarResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'content': instance.content,
      'headers': instance.headers,
    };
