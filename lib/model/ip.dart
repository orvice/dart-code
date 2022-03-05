import 'package:json_annotation/json_annotation.dart';

part 'ip.g.dart';

@JsonSerializable()
class IP {
  @JsonKey(name: 'ip')
  String ip;

  @JsonKey(name: 'city')
  String city;

  String org;

  IP(this.ip, this.city, this.org);

  /// Connect the generated [_$IPFromJson] function to the `fromJson`
  /// factory.
  factory IP.fromJson(Map<String, dynamic> json) => _$IPFromJson(json);

  /// Connect the generated [_$IPToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$IPToJson(this);
}
