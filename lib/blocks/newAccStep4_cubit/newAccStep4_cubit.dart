import 'package:flutter_bloc/flutter_bloc.dart';

import 'newAccStep4_states.dart';

class NewAccStep4Cubit extends Cubit<NewAccStep4States>{
  NewAccStep4Cubit() : super(NewAccStep4Init());

  static NewAccStep4Cubit get(context)=>BlocProvider.of(context);

  double value=18;
  double value1=150;
  double value2=55;
  double value3=60;

  void isChanges(val){
    value=val;
    emit(NewAccStep4ChangedState());
  }
  void isChanges1(val){
    value1=val;
    emit(NewAccStep4ChangedState1());
  }
  void isChanges2(val){
    value2=val;
    emit(NewAccStep4ChangedState2());
  }
  void isChanges3(val){
    value3=val;
    emit(NewAccStep4ChangedState3());
  }



}