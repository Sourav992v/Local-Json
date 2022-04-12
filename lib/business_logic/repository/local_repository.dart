 import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:local_json/business_logic/model/products.dart';

class LocalRepository {

  Future<Products?>? getProductsDetails() async{
    Products? products = Products();
    try {
      var result = await rootBundle.loadString('assets/json/assignment.json');
      final data = json.decode(result);
      products = Products.fromJson(json.encode(data));
    }on Exception catch(e){
      print(e);
    }
    return products;
  }
 }