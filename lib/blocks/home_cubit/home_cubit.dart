import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit() : super(HomeInit());

  static HomeCubit get(context)=>BlocProvider.of(context);

  List boolCheck=[false,false,false,false,false,false,false,false,false,false,];

  void isClicked(i){
    boolCheck[i]=!boolCheck[i];
    emit(HomeClickedState());
  }

}