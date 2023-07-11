import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_k/303/regrest_source/model/resource_model.dart';

abstract class IReqresService{
  IReqresService(this.dio);

  final Dio dio;
  Future<List<ResourceModel>?> fetchResourceItem();
}
enum _ReqResPath{
  resource
}
class ReqresService extends IReqresService{
  ReqresService(Dio dio) : super(dio);

  @override
  Future<List<ResourceModel>?> fetchResourceItem()async {
    final response =await dio.get('/${_ReqResPath.resource.name}');
    if(response.statusCode==HttpStatus.ok){
      final jsonBody=response.data;
      if(jsonBody is List){
        return jsonBody.map((json) => ResourceModel.fromJson(json)).toList();
      }
    }
    return null;
  }


}