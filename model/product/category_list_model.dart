import 'category_model.dart';

class CategoryListModel {
  List<CategoryModel> list;

  CategoryListModel({this.list});

  factory CategoryListModel.fromJsonList(List list) {
    return CategoryListModel(
      list: list
          ?.map((element) =>
              element == null ? null : CategoryModel.fromJson(element))
          ?.toList(),
    );
  }
}
