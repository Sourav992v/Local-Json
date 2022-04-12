// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Products> _$productsSerializer = new _$ProductsSerializer();

class _$ProductsSerializer implements StructuredSerializer<Products> {
  @override
  final Iterable<Type> types = const [Products, _$Products];
  @override
  final String wireName = 'Products';

  @override
  Iterable<Object?> serialize(Serializers serializers, Products object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'products',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ProductsData)])),
    ];

    return result;
  }

  @override
  Products deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'products':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ProductsData)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Products extends Products {
  @override
  final BuiltList<ProductsData> data;

  factory _$Products([void Function(ProductsBuilder)? updates]) =>
      (new ProductsBuilder()..update(updates)).build();

  _$Products._({required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, 'Products', 'data');
  }

  @override
  Products rebuild(void Function(ProductsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductsBuilder toBuilder() => new ProductsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Products && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Products')..add('data', data))
        .toString();
  }
}

class ProductsBuilder implements Builder<Products, ProductsBuilder> {
  _$Products? _$v;

  ListBuilder<ProductsData>? _data;
  ListBuilder<ProductsData> get data =>
      _$this._data ??= new ListBuilder<ProductsData>();
  set data(ListBuilder<ProductsData>? data) => _$this._data = data;

  ProductsBuilder();

  ProductsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Products other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Products;
  }

  @override
  void update(void Function(ProductsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Products build() {
    _$Products _$result;
    try {
      _$result = _$v ?? new _$Products._(data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Products', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
