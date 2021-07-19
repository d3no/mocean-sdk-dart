import 'package:moceansdk/moceansdk.dart';
import 'package:moceansdk/src/utils.dart';

abstract class AbstractButton {
  Map params = {};

  Map get requestData {
    for (var required in this.requiredKey()) {
      if (Utils.isNullOrEmpty(this.params[required])) {
        throw RequiredFieldException(
            "${required} is mandatory field, can't be empty (${this.runtimeType.toString()})");
      }
    }
    this.params['type'] = type();
    return this.params;
  }

  List requiredKey();

  String type();
}
