import 'package:equatable/equatable.dart';
import 'package:http_archive/src/har_header.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'har_request.g.dart';

@JsonSerializable()
class HarRequest extends Equatable {
  const HarRequest({
    this.method = 'GET',
    @required this.url,
    this.headers,
  });

  factory HarRequest.fromJson(Map<String, dynamic> json) =>
      _$HarRequestFromJson(json);

  final String method;

  /// Absolute URL of the request (fragments are not included).
  final String url;
  final List<HarHeader> headers;

  Map<String, dynamic> toJson() => _$HarRequestToJson(this);

  /// The [headers] field is deliberately ignored here in objects comparison.
  @override
  List<Object> get props => [method, url];
}
