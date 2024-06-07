
class TextHelper {

  static String joinStr({ required List<TextHelperJoinItem> list, String separator = '' }) {
    var results = list.where((item) => item.toString().length > 1).toList();
    return List<String>.from(results).join(separator);
  }
}

class TextHelperJoinItem {
  final dynamic text;
  final dynamic textResolve;
  final bool Function(dynamic text)? checker;

  TextHelperJoinItem({ required this.text, this.textResolve, this.checker });

  @override
  String toString() {
    String textStr = text is String ? text : text.toString();
    if(checker != null && !checker!(text)) {
        textStr = textResolve is String ? textResolve : textResolve.toString();
    }
    return textStr;
  }
}