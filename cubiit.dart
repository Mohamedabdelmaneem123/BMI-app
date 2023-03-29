



import 'package:application/moduals/info/showeinfo.dart';
import 'package:application/shared/Bloc/Appstates.dart';
import 'package:application/shared/blocBmiscreen/Bmistates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitBmi extends Cubit<Bmistates> {
  CubitBmi() : super(initialstste());

  static CubitBmi get(context) => BlocProvider.of(context);

  bool isMale = true;
  double heigt = 120;
  int weight = 50;
  int age = 25;


  var Formkay = GlobalKey<FormState>();
  var emailcontroller2 = TextEditingController();
  var namecontroller = TextEditingController();
  var passcontroller = TextEditingController();
  var conpasscontroller = TextEditingController();
  var ppasscontroller = TextEditingController();
  double redius = 20.0;


  void vlueslider(value) {
    heigt = value;
    emit(changevalue());
  }

  void plusweight() {
    weight++;
    emit(changevalue());
  }

  void minusweight() {
    weight--;
    emit(changevalue());
  }

  void plusage() {
    age++;
    emit(changevalue());
  }

  void minusage() {
    age--;
    emit(changevalue());
  }

  void ismalestate() {
    isMale = false;
    emit(changevalue());
  }

  void ismalestate2() {
    isMale = true;
    emit(changevalue());
  }

}