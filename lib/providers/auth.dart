import 'package:flutter/cupertino.dart';
import 'package:opnimus_mobile_flutter/models/user.dart';

class AuthProvider with ChangeNotifier {
  User? user;
  
  AuthProvider({ this.user });
}