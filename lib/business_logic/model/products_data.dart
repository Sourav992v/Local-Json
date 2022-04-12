import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:local_json/business_logic/serializers.dart';

part 'products_data.g.dart';

abstract class ProductsData
    implements Built<ProductsData, ProductsDataBuilder> {
  @BuiltValueField(wireName: 'name')
  String? get name;

  @BuiltValueField(wireName: 'description')
  String? get description;

  @BuiltValueField(wireName: 'quantity')
  String? get quantity;

  ProductsData._();

  String toJson() {
    return jsonEncode(serializers.serializeWith(ProductsData.serializer, this));
  }

  static ProductsData? fromJson(String jsonString) {
    return serializers
        .deserializeWith(ProductsData.serializer, jsonDecode(jsonString))
        ?.rebuild((b) => b
          ..name ??= ''
          ..description ??= ''
          ..quantity ??= '');
  }

  static List<ProductsData> fromListJson(String jsonString) {
    return jsonDecode(jsonString)
        .map<ProductsData>((e) => fromJson(jsonEncode(e)))
        .toList();
  }

  factory ProductsData([Function(ProductsDataBuilder b) updates]) =
      _$ProductsData;

  static Serializer<ProductsData> get serializer => _$productsDataSerializer;
}
