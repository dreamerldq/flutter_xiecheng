// 活动入口模型
import 'package:flutter_app/model/common_model.dart';

class SubNavListModel{
  final String icon;
  final String moreUrl;
  final CommonModel bigCard1;
  final CommonModel bigCard2;
  final CommonModel smallCard1;
  final CommonModel smallCard2;
  final CommonModel smallCard3;
  final CommonModel smallCard4;

  SubNavListModel({this.icon, this.moreUrl, this.smallCard1, this.smallCard2, this.smallCard3, this.smallCard4, this.bigCard1, this.bigCard2});
  factory SubNavListModel.fromJson(Map<String,dynamic>json){
    return SubNavListModel(
      icon: json['icon'],
      moreUrl: json['moreUrl'],
      bigCard1: CommonModel.fromJson(json['bigCard1']),
      bigCard2: CommonModel.fromJson(json['bigCard2']),
      smallCard4: CommonModel.fromJson(json['smallCard4']),
      smallCard3: CommonModel.fromJson(json['smallCard3']),
      smallCard2: CommonModel.fromJson(json['smallCard2']),
      smallCard1: CommonModel.fromJson(json['smallCard1']),
    );
  }
}