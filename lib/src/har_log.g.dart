// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'har_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HarLog _$HarLogFromJson(Map<String, dynamic> json) {
  return HarLog(
    entries: (json['entries'] as List<dynamic>)
        .map((e) => HarEntry.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$HarLogToJson(HarLog instance) => <String, dynamic>{
      'entries': instance.entries,
    };
