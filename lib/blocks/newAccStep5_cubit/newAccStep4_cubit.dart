import 'package:flutter_bloc/flutter_bloc.dart';

import 'newAccStep4_states.dart';

class NewAccStep5Cubit extends Cubit<NewAccStep5States>{
  NewAccStep5Cubit() : super(NewAccStep5Init());

  static NewAccStep5Cubit get(context)=>BlocProvider.of(context);

  int selectedDay;
  String radioSelect;
  String radioSelect1;
  List boolCheck=[false,false,false,false,false,false,false,];
  List days=[
    'السبت',
    'الاحد',
    'الاثنين',
    'الثلاثاء',
    'الاربعاء',
    'الخميس',
    'الجمعه',
  ];
  void isBoolChecked(val,i){
    boolCheck[i]=val;
    emit(NewAccStep5CheckedState());
  }

  void radioChoice(val){
    radioSelect=val;
    emit(NewAccStep5RadioCheckState());
  }
  void radioChoice1(val){
    radioSelect1=val;
    emit(NewAccStep5RadioCheckState1());
  }

  void isSelected(val){
    selectedDay=val;
    emit(NewAccStep5SelectedState());
  }




}