import 'package:flutter_develop/model/common_model.dart';

class GridNavModel {
  GridNavItem hotel;
  GridNavItem flight;
  GridNavItem travel;

  GridNavModel({this.hotel, this.flight, this.travel});

  factory GridNavModel.fromJson(Map<String, dynamic> json) {
    return GridNavModel(
      hotel: json['hotel'] != null
          ? new GridNavItem.fromJson(json['hotel'])
          : null,
      flight: json['flight'] != null
          ? new GridNavItem.fromJson(json['flight'])
          : null,
      travel: json['travel'] != null
          ? new GridNavItem.fromJson(json['travel'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.hotel != null) {
      data['hotel'] = this.hotel.toJson();
    }
    if (this.flight != null) {
      data['flight'] = this.flight.toJson();
    }
    if (this.travel != null) {
      data['travel'] = this.travel.toJson();
    }
    return data;
  }
}

class GridNavItem {
  String startColor;
  String endColor;
  CommonModel mainItem;
  CommonModel item1;
  CommonModel item2;
  CommonModel item3;
  CommonModel item4;

  GridNavItem(
      {this.startColor,
      this.endColor,
      this.mainItem,
      this.item1,
      this.item2,
      this.item3,
      this.item4});

  factory GridNavItem.fromJson(Map<String, dynamic> json) {
    return GridNavItem(
      startColor: json["startColor"],
      endColor: json["endColor"],
      mainItem: json['mainItem'] != null
          ? new CommonModel.fromJson(json['mainItem'])
          : null,
      item1: json['item1'] != null
          ? new CommonModel.fromJson(json['item1'])
          : null,
      item2:
          json['tem2'] != null ? new CommonModel.fromJson(json['item2']) : null,
      item3: json['item3'] != null
          ? new CommonModel.fromJson(json['item3'])
          : null,
      item4: json['item4'] != null
          ? new CommonModel.fromJson(json['item4'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['startColor'] = this.startColor;
    data['endColor'] = this.endColor;
    if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
    if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
    if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
    if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
    if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
    return data;
  }
}
