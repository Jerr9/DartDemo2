// import 'package:json_annotation/json_annotation.dart';

// part 'product_model.g.dart';

// @JsonSerializable()
class ProductModel {
  int productId;
  String productName;

  ProductModel({this.productId, this.productName});

  factory ProductModel.fromJson(Map json) {
    return ProductModel(
      productId: json['productId'] as int,
      productName: json['productName'] as String,
    );
  }
  // factory ProductModel.fromJson(Map<String, dynamic> json) =>
  //     _$ProductModelFromJson(json);

  // Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
