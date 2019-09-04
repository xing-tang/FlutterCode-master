import 'package:flutter_develop/model/common_model.dart';
import 'package:flutter_develop/model/config_model.dart';
import 'package:flutter_develop/model/grid_nav_model.dart';
import 'package:flutter_develop/model/sales_box_model.dart';

class HomeModel {
  ConfigModel config;
  List<CommonModel> bannerList;
  List<CommonModel> localNavList;
  GridNavModel gridNav;
  List<CommonModel> subNavList;
  SalesBoxModel salesBox;

  HomeModel({
    this.config,
    this.bannerList,
    this.localNavList,
    this.gridNav,
    this.subNavList,
    this.salesBox,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    var bannerListJson;
    if (json['bannerList'] != null) {
      bannerListJson = new List<CommonModel>();
      json['bannerList'].forEach((v) {
        bannerListJson.add(new CommonModel.fromJson(v));
      });
    }
    var localNavListJson;
    if (json['localNavList'] != null) {
      localNavListJson = new List<CommonModel>();
      json['localNavList'].forEach((v) {
        localNavListJson.add(new CommonModel.fromJson(v));
      });
    }
    var subNavListJson;
    if (json['subNavList'] != null) {
      subNavListJson = new List<CommonModel>();
      json['subNavList'].forEach((v) {
        subNavListJson.add(new CommonModel.fromJson(v));
      });
    }
    return HomeModel(
      config: json['config'] != null
          ? new ConfigModel.fromJson(json['config'])
          : null,
      bannerList: bannerListJson,
      localNavList: localNavListJson,
      gridNav: json['gridNav'] != null
          ? new GridNavModel.fromJson(json['gridNav'])
          : null,
      subNavList: subNavListJson,
      salesBox: json['salesBox'] != null
          ? new SalesBoxModel.fromJson(json['salesBox'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.config != null) {
      data['config'] = this.config.toJson();
    }
    if (this.bannerList != null) {
      data['bannerList'] = this.bannerList.map((v) => v.toJson()).toList();
    }
    if (this.localNavList != null) {
      data['localNavList'] = this.localNavList.map((v) => v.toJson()).toList();
    }
    if (this.gridNav != null) {
      data['gridNav'] = this.gridNav.toJson();
    }
    if (this.subNavList != null) {
      data['subNavList'] = this.subNavList.map((v) => v.toJson()).toList();
    }
    if (this.salesBox != null) {
      data['salesBox'] = this.salesBox.toJson();
    }
    return data;
  }
}
