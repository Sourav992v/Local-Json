import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:local_json/business_logic/model/products.dart';
import 'package:local_json/business_logic/repository/local_repository.dart';
import 'package:local_json/locator.dart';
import 'package:local_json/utils/resource_status.dart';

part 'local_json_state.dart';

class LocalJsonCubit extends Cubit<LocalJsonState> {

  LocalRepository localRepository = locator<LocalRepository>();
  LocalJsonCubit() : super(const LocalJsonState());

  Future<void> getJson() async{
    emit(state.copyWith(status: ResourceStatus.loading));

    Future.delayed(const Duration(seconds: 2), (){
      localRepository.getProductsDetails()?.then((value) {
        if(value != null){
          emit(state.copyWith(status: ResourceStatus.success, products: value));
        }else{
          emit(state.copyWith(status: ResourceStatus.failure));
        }
      });
    });
  }
}
