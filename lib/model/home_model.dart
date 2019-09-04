import 'package:flutter_develop/model/common_model.dart';
import 'package:flutter_develop/model/config_model.dart';
import 'package:flutter_develop/model/grid_nav_model.dart';
import 'package:flutter_develop/model/sales_box_model.dart';

class HomeModel {
  final ConfigModel config;
  final List<CommonModel> bannerList;
  final List<CommonModel> localNavList;
  final List<CommonModel> subNavList;
  final GridNavModel gridNav;
  final SalesBoxModel salesBox;

  HomeModel({
    this.config,
    this.bannerList,
    this.subNavList,
    this.localNavList,
    this.gridNav,
    this.salesBox,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    var bannerListJson = json["bannerList"] as List;
    List<CommonModel> bannerList =
        bannerListJson.map((i) => CommonModel.fromJson(i)).toList();

    var localNavListJson = json["localNavList"] as List;
    List<CommonModel> localNavList =
        localNavListJson.map((i) => CommonModel.fromJson(i)).toList();

    var subNavListJson = json["subNavList"] as List;
    List<CommonModel> subNavList =
        subNavListJson.map((i) => CommonModel.fromJson(i)).toList();

    return HomeModel(
      config: ConfigModel.fromJson(json["config"]),
      bannerList: bannerList,
      localNavList: localNavList,
      subNavList: subNavList,
      gridNav: GridNavModel.fromJson(json["gridNav"]),
      salesBox: SalesBoxModel.fromJson(json["salesBox"]),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (config != null) {
      data['config'] = this.config.toJson;
    }
    if (this.bannerList != null) {
      data['bannerList'] = this.bannerList.map((v) => v.toJson()).toList();
    }
    if (this.localNavList != null) {
      data['localNavList'] = this.localNavList.map((v) => v.toJson()).toList();
    }
    if (this.subNavList != null) {
      data['subNavList'] = this.subNavList.map((v) => v.toJson()).toList();
    }
    if (gridNav != null) {
      data['gridNav'] = this.gridNav.toJson;
    }
    if (salesBox != null) {
      data['salesBox'] = this.salesBox.toJson;
    }
    return data;
  }

}
