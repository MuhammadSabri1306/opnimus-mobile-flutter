import 'package:opnimus_mobile_flutter/models/mixins/dynamic_data.dart';

class PortDynamic with DynamicDataAbility {
  PortDynamic(Map<String, dynamic>? data) {
    if(data != null) fromMap(data);
  }

  static List<PortDynamic> createFromList(List<Map<String, dynamic>> list) {
    if(list.isEmpty) return [];
    return list.map((item) => PortDynamic(item)).toList();
  }

  String get title {
    return joinStrValues(keys: ['rtu_sname', 'no_port'], separator: ' ');
  }

  String getValueText() {
    double value = data?['value'].toDouble();
    var unit = data?['units'].toString();
    
    String valueText = value.toStringAsFixed(2);
    return [valueText, unit].join(' ');
  }
}