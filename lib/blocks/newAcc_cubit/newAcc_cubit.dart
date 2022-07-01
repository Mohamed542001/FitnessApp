import 'package:flutter_bloc/flutter_bloc.dart';

import 'newAcc_states.dart';

class NewAccCubit extends Cubit<NewAccStates>{
  NewAccCubit() : super(NewAccInit());

  static NewAccCubit get(context)=>BlocProvider.of(context);

  String selectedGender;

  void isSelected(val){
    selectedGender=val;
    emit(NewAccSelectedState());
  }


}