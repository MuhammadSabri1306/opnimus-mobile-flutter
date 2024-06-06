import 'package:flutter/cupertino.dart';
import 'package:opnimus_mobile_flutter/models/port.dart';

class PortProvider with ChangeNotifier {
  List<PortDynamic> ports = [];
  
  PortProvider(this.ports);
}