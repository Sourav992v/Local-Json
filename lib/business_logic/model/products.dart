import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:local_json/business_logic/model/products_data.dart';
import 'package:local_json/business_logic/serializers.dart';

part 'products.g.dart';

abstract class Products implements Built<Products, ProductsBuilder> {


  @BuiltValueField(wireName: 'products')
  BuiltList<ProductsData> get data;

  Products._();

  String toJson() {
    return jsonEncode(serializers.serializeWith(Products.serializer, this));
  }

  static Products? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Products.serializer, jsonDecode(jsonString))
        ?.rebuild((b) => b
        ..data
    );
  }

  static List<Products> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<Products>((e) => fromJson(jsonEncode(e))).toList();

  }

  factory Products([Function(ProductsBuilder b) updates]) = _$Products;

  static Serializer<Products> get serializer => _$productsSerializer;

}