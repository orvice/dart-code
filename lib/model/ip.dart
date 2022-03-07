import 'package:json_annotation/json_annotation.dart';

part 'ip.g.dart';

@JsonSerializable()
class IP with loc {
  @JsonKey(name: 'ip')
  String ip;

  String org;

  IP(this.ip, this.org);

  /// Connect the generated [_$IPFromJson] function to the `fromJson`
  /// factory.
  factory IP.fromJson(Map<String, dynamic> json) => _$IPFromJson(json);

  /// Connect the generated [_$IPToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$IPToJson(this);
}

mixin loc {
  @JsonKey(name: 'city')
  String city = '';

  @JsonKey(name: 'region')
  String region = '';
}
