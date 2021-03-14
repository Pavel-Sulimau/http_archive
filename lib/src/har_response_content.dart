import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'har_response_content.g.dart';

@JsonSerializable()
class HarResponseContent extends Equatable {
  const HarResponseContent({
    required this.mimeType,
    required this.text,
  });

  factory HarResponseContent.fromJson(Map<String, dynamic> json) =>
      _$HarResponseContentFromJson(json);

  final String mimeType;
  final String text;

  Map<String, dynamic> toJson() => _$HarResponseContentToJson(this);

  @override
  List<Object?> get props => [mimeType, text];
}
