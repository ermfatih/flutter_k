import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_k/303/regrest_source/service/regrest_service.dart';
import 'package:flutter_k/303/regrest_source/view/reqres_view.dart';

abstract class ReqresViewModel extends State<ReqResView>{
  late final IReqresService regresService;
  @override
  void initState() {
    super.initState();
    regresService =ReqresService(Dio(BaseOptions(baseUrl:'https://reqres.in/api')));
  }

}