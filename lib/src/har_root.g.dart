// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'har_root.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HarRoot _$HarRootFromJson(Map<String, dynamic> json) {
  return HarRoot(
    log: json['log'] == null
        ? null
        : HarLog.fromJson(json['log'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HarRootToJson(HarRoot instance) => <String, dynamic>{
      'log': instance.log,
    };
