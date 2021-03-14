import 'package:equatable/equatable.dart';
import 'package:http_archive/http_archive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'har_log.g.dart';

@JsonSerializable()
class HarLog extends Equatable {
  const HarLog({
    required this.entries,
  });

  factory HarLog.fromJson(Map<String, dynamic> json) => _$HarLogFromJson(json);

  final List<HarEntry> entries;

  Map<String, dynamic> toJson() => _$HarLogToJson(this);

  @override
  List<Object?> get props => [entries];
}
