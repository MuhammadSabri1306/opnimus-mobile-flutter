import 'package:opnimus_mobile_flutter/models/mixins/dynamic_data.dart';
import 'package:opnimus_mobile_flutter/helpers/text.dart';

class PortDynamic with DynamicDataAbility {
  PortDynamic(Map<String, dynamic>? data) {
    if(data != null) fromMap(data);
  }

  static List<PortDynamic> createFromList(List<Map<String, dynamic>> list) {
    if(list.isEmpty) return [];
    return list.map((item) => PortDynamic(item)).toList();
  }

  static String titleOf(PortDynamic port) {
    return TextHelper.joinStr(
      separator: ' ',
      list: <TextHelperJoinItem>[
        TextHelperJoinItem(text: port.data?['rtu_sname'], checker: (text) => text is String),
        TextHelperJoinItem(text: port.data?['no_port'], checker: (text) => text is String),
      ]
    );
  }

  String get title {
    return titleOf(this);
  }

  String getValueText() {
    double value = data?['value'].toDouble();
    var unit = data?['units'].toString();
    
    String valueText = value.toStringAsFixed(2);
    return [valueText, unit].join(' ');
  }
}