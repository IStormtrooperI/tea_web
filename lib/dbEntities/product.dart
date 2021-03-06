import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tea_web/dbEntities/ingredient.dart';
import 'package:tea_web/dbEntities/products_ingridients.dart';

class product{
  late String _id;
  late String _name;
  late String _description;
  late String _image;
  late DocumentReference _category;
  List<ingridient>? _ingredients;

  product.fromDoc(QueryDocumentSnapshot doc){
    _id = doc.id;
    _name = doc["name"];
    _description = doc["description"];
    _category = doc["category"];
    _image = doc["image"];
  }

  product(DocumentSnapshot<Map<String, dynamic>> value){
    _id=value.id;
    _name=value.get("name");
    _description=value.get("description");
    _category=value.get("category");
    _image=value.get("image");
  }

  product.ds(DocumentSnapshot<Object?> value){
    _id=value.id;
    _name=value.get("name");
    _description=value.get("description");
    _category=value.get("category");
    _image=value.get("image");
  }


  DocumentReference get category => _category;

  set category(DocumentReference value) {
    _category = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  List<ingridient>? get ingredients => _ingredients;

  set ingredients(List<ingridient>? value) {
    _ingredients = value;
  }

}