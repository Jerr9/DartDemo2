import 'product_model.dart';

class CategoryModel {
  int categoryId;
  String categoryName;
  List<ProductModel> children;

  CategoryModel({this.categoryId, this.categoryName, this.children});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      categoryId: json['categoryId'] as int,
      categoryName: json['categoryName'] as String,
      children: (json['children'] as List)
          .map((e) => ProductModel.fromJson(e))
          .toList(),
    );
  }
}
