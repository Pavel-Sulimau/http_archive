import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'har_header.g.dart';

@JsonSerializable()
class HarHeader extends Equatable {
  const HarHeader({
    required this.name,
    required this.value,
  });

  factory HarHeader.fromJson(Map<String, dynamic> json) =>
      _$HarHeaderFromJson(json);

  final String name;
  final String value;

  Map<String, dynamic> toJson() => _$HarHeaderToJson(this);

  @override
  List<Object?> get props => [name, value];
}
