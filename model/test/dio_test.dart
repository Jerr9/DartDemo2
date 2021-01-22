import 'dart:io';

import 'package:dio/dio.dart';

import '../product/category_model.dart';
import '../product/product_model.dart';

void getData() async {
  try {
    Response res = await new Dio().post("http://localhost:9999/categoryList");
    List<CategoryModel> list = (res.data['data'] as List)
        ?.map((e) => CategoryModel.fromJson(e))
        ?.toList();
    for (CategoryModel cateModel in list) {
      print(cateModel.categoryId);
      print(cateModel.categoryName);
      for (ProductModel prodModel in cateModel.children) {
        print(prodModel.productId);
        print(prodModel.productName);
      }
    }
    // CategoryListModel model = CategoryListModel.fromJsonList(res.data['data']);
    // print(model.list.length);
    // for (CategoryModel cModel in model.list) {
    //   print("Category: ${cModel.categoryName}");
    //   for (ProductModel pModel in cModel.children) {
    //     print('Id：${pModel.productId}, Name: ${pModel.productName}');
    //   }
    // }
  } on IOException catch (e) {
    print("IOException: $e");
  } catch (e) {
    print("Exception: $e");
  }
}

void main() {
  Future.delayed(Duration(seconds: 3), () {
    print('111');
  });
  getData();
}
