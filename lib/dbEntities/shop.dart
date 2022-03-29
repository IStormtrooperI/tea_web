import 'package:cloud_firestore/cloud_firestore.dart';

class shop {
  late String _id;
  late String _name;
  late String _phone_number;
  late String _vk;
  late String _website;
  late String _image;

  shop.fromDoc(QueryDocumentSnapshot doc){
    _id = doc.id;
    _name = doc["name"];
    _phone_number = doc["phone_number"];
    _vk = doc["vk"];
    _website = doc["website"];
    _image = doc["image"];
  }

  String get website => _website;

  set website(String value) {
    _website = value;
  }

  String get vk => _vk;

  set vk(String value) {
    _vk = value;
  }

  String get phone_number => _phone_number;

  set phone_number(String value) {
    _phone_number = value;
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
}