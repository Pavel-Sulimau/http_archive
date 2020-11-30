// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'har_response_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HarResponseContent _$HarResponseContentFromJson(Map<String, dynamic> json) {
  return HarResponseContent(
    mimeType: json['mimeType'] as String,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$HarResponseContentToJson(HarResponseContent instance) =>
    <String, dynamic>{
      'mimeType': instance.mimeType,
      'text': instance.text,
    };
