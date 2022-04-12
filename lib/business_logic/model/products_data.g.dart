// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductsData> _$productsDataSerializer =
    new _$ProductsDataSerializer();

class _$ProductsDataSerializer implements StructuredSerializer<ProductsData> {
  @override
  final Iterable<Type> types = const [ProductsData, _$ProductsData];
  @override
  final String wireName = 'ProductsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProductsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProductsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductsData extends ProductsData {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? quantity;

  factory _$ProductsData([void Function(ProductsDataBuilder)? updates]) =>
      (new ProductsDataBuilder()..update(updates)).build();

  _$ProductsData._({this.name, this.description, this.quantity}) : super._();

  @override
  ProductsData rebuild(void Function(ProductsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductsDataBuilder toBuilder() => new ProductsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductsData &&
        name == other.name &&
        description == other.description &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, name.hashCode), description.hashCode), quantity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductsData')
          ..add('name', name)
          ..add('description', description)
          ..add('quantity', quantity))
        .toString();
  }
}

class ProductsDataBuilder
    implements Builder<ProductsData, ProductsDataBuilder> {
  _$ProductsData? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _quantity;
  String? get quantity => _$this._quantity;
  set quantity(String? quantity) => _$this._quantity = quantity;

  ProductsDataBuilder();

  ProductsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _quantity = $v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductsData;
  }

  @override
  void update(void Function(ProductsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductsData build() {
    final _$result = _$v ??
        new _$ProductsData._(
            name: name, description: description, quantity: quantity);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
