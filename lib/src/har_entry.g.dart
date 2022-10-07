// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'har_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HarEntry _$HarEntryFromJson(Map<String, dynamic> json) {
  return HarEntry(
    startedDateTime: DateTime.parse(json['startedDateTime'] as String),
    request: HarRequest.fromJson(json['request'] as Map<String, dynamic>),
    response: json['response'] == null
        ? null
        : HarResponse.fromJson(json['response'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HarEntryToJson(HarEntry instance) => <String, dynamic>{
      'startedDateTime': instance.startedDateTime.toIso8601String(),
      'request': instance.request,
      'response': instance.response,
    };
