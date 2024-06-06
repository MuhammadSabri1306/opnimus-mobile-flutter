import 'package:flutter/cupertino.dart';
import 'package:opnimus_mobile_flutter/models/alarm.dart';

class AlarmProvider with ChangeNotifier {
  List<AlarmDynamic> alarms = [];
  
  AlarmProvider(this.alarms);
}