import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'har_header.dart';
import 'har_response_content.dart';

part 'har_response.g.dart';

@JsonSerializable()
class HarResponse extends Equatable {
  const HarResponse({
    required this.status,
    required this.content,
    required this.headers,
  });

  factory HarResponse.fromJson(Map<String, dynamic> json) =>
      _$HarResponseFromJson(json);

  final int status;
  final HarResponseContent content;
  final List<HarHeader> headers;

  Map<String, dynamic> toJson() => _$HarResponseToJson(this);

  @override
  List<Object?> get props => [status, content, headers];
}
