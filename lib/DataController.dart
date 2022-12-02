import 'dart:convert';
import 'package:christmas_app_/DataModel.dart';
import 'package:flutter/services.dart';
import 'package:get/state_manager.dart';

class ModelDataController extends GetxController{
  var modeldata = <Model>[].obs;
  var isDataLoadingCompleted = false.obs;

  @override
  void onInit(){
    super.onInit();
    fetchData();
  }
  void fetchData() async{
    var modeljson = await rootBundle.loadString("lib/Json/Moddata.json");
    var decodevalue = jsonDecode(modeljson);
    modeldata.value = List.from(decodevalue).map((e) => Model.fromMap(e)).toList();

    isDataLoadingCompleted.value = true;
  

  }
}