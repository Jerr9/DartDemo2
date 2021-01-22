import 'package:json_annotation/json_annotation.dart';

part 'ResponseBody.g.dart';

@JsonSerializable(explicitToJson: true)
class Responsebody {
  List<ResponsebodyData> data;
  int code;
  int message;
  Responsebody({this.data, this.code, this.message});

  factory Responsebody.fromJson(Map<String, dynamic> json) =>
      _$ResponsebodyFromJson(json);
  Map<String, dynamic> toJson() => _$ResponsebodyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResponsebodyData {
  int categoryId;
  String categoryName;
  List<ChildrenData> children;

  ResponsebodyData({
    this.categoryId,
    this.categoryName,
    this.children,
  });

  factory ResponsebodyData.fromJson(Map<String, dynamic> json) =>
      _$ResponsebodyDataFromJson(json);
  Map<String, dynamic> toJson() => _$ResponsebodyDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChildrenData {
  int productId;
  String productName;

  ChildrenData({
    this.productId,
    this.productName,
  });

  factory ChildrenData.fromJson(Map<String, dynamic> json) =>
      _$ChildrenDataFromJson(json);
  Map<String, dynamic> toJson() => _$ChildrenDataToJson(this);
}
