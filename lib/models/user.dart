
enum UserLevel { nasional, regional, witel }

class User {
  String username;
  String fullName;
  String email;
  String phoneNumber;

  User({
    required this.username,
    required this.fullName,
    required this.email,
    required this.phoneNumber
  });
}

class BasicUser extends User {
  UserLevel level;
  Map<String, dynamic>? regional;
  Map<String, dynamic>? witel;

  BasicUser({
    required super.username,
    required super.fullName,
    required super.email,
    required super.phoneNumber,
    required this.level,
    this.regional,
    this.witel
  });
}

class PicUser extends BasicUser {
  List<int>? locIds;

  PicUser({
    required super.username,
    required super.fullName,
    required super.email,
    required super.phoneNumber,
    required super.level,
    super.regional,
    super.witel,
    this.locIds
  });
}

class AdminUser extends BasicUser {
  AdminUser({
    required super.username,
    required super.fullName,
    required super.email,
    required super.phoneNumber,
    required super.level,
    super.regional,
    super.witel,
  });
}