import 'package:equatable/equatable.dart';
import 'package:http_archive/src/har_log.dart';
import 'package:json_annotation/json_annotation.dart';

part 'har_root.g.dart';

@JsonSerializable()
class HarRoot extends Equatable {
  const HarRoot({
    required this.log,
  });

  factory HarRoot.fromJson(Map<String, dynamic> json) =>
      _$HarRootFromJson(json);

  final HarLog log;

  Map<String, dynamic> toJson() => _$HarRootToJson(this);

  @override
  List<Object?> get props => [log];
}
