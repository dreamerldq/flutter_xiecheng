
import 'package:flutter_app/model/common_model.dart';
import 'package:flutter_app/model/config_model.dart';
import 'package:flutter_app/model/grid_nav_model.dart';
import 'package:flutter_app/model/sales_box_model.dart';

class HomeModel{
  final ConfigModel config;
  final List<CommonModel> bannerList;
  final List<CommonModel> localNavList;
  final GridNavModel gridNav;
  final SalesBoxModel salesBox;
  final List<CommonModel> subNavList;
  HomeModel({this.bannerList, this.localNavList, this.gridNav, this.config, this.salesBox, this.subNavList});

  factory HomeModel.fromJson(Map<String, dynamic> json){
    var localNavListJson = json['localNavList'] as List;
    List<CommonModel> localNavList = localNavListJson.map((i) =>
        CommonModel.fromJson(i)).toList();

    var bannerListJson = json['bannerList'] as List;
    List<CommonModel> bannerList = bannerListJson.map((i) =>
        CommonModel.fromJson(i)).toList();

    var subNavListJson = json['subNavList'] as List;
    List<CommonModel> subNavList = subNavListJson.map((i) =>
        CommonModel.fromJson(i)).toList();

    return HomeModel(
        localNavList: localNavList,
        bannerList: bannerList,
        subNavList: subNavList,
        config: ConfigModel.fromJson(json['config']),
        gridNav: GridNavModel.fromJson(json['gridNav']),
        salesBox: SalesBoxModel.fromJson(json['salesBox'])
    );
  }

}