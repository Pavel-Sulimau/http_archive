import 'package:equatable/equatable.dart';
import 'package:http_archive/src/har_request.dart';
import 'package:http_archive/src/har_response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'har_entry.g.dart';

@JsonSerializable()
class HarEntry extends Equatable {
  const HarEntry({
    this.startedDateTime,
    @required this.request,
    @required this.response,
  });

  factory HarEntry.fromJson(Map<String, dynamic> json) =>
      _$HarEntryFromJson(json);

  final DateTime startedDateTime;
  final HarRequest request;
  final HarResponse response;

  Map<String, dynamic> toJson() => _$HarEntryToJson(this);

  @override
  List<Object> get props => [request, response];
}
