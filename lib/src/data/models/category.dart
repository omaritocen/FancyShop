import 'package:shop/src/data/models/category_item.dart';
import 'package:shop/src/data/models/gender_enum.dart';

class CategoryModel {
  int id;
  String name;
  String description;
  Gender gender;
  String imageUrl;
 // List<CategoryItemModel> categoryItems;

  CategoryModel({
    this.id,
    this.name,
    this.description,
    //this.categoryItems,
    this.gender,
    this.imageUrl,
  });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.description = json['description'];
    //this.categoryItems = categoryItemsFromJson(json['categoryItems']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    return data;
  }

  List<CategoryItemModel> categoryItemsFromJson(json) {
    List<CategoryItemModel> items = [];
    for (int i = 0; i < json.length; i++) {
      final item = CategoryItemModel.fromJson(json[i]);
      items.add(item);
    }

    return items;
  }
}
