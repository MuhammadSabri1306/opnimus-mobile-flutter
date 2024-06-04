
mixin DynamicDataAbility {
  Map<String, dynamic>? _data;

  Map<String, dynamic>? get data => _data;

  void fromMap(Map<String, dynamic> data) => _data = data;

  String joinStrValues({ required List<String> keys, String separator = '', bool exceptNull = true }) {
    List<String> values = [];
    for(final key in keys) {

      var value = data?[key];
      if(exceptNull && value == null) continue;

      if(value is! String) value = value.toString();
      values.add(value);

    }
    return values.join(separator);
  }
}