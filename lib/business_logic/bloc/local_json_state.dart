part of 'local_json_cubit.dart';

class LocalJsonState extends Equatable {
  const LocalJsonState({this.status, this.products});

  final ResourceStatus? status;
  final Products? products;

  LocalJsonState copyWith({
    ResourceStatus? status,
    Products? products}) {
    return LocalJsonState(
        status: status ?? this.status, products: products ?? this.products);
  }

  @override
  List<Object?> get props => [status, products];

}

class LocalJsonInitial extends LocalJsonState {
  @override
  List<Object> get props => [];
}
