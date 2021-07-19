import 'wa_button_basic.dart';

class WaCallButton extends WaButtonBasic {
  @override
  List requiredKey() {
    return [];
  }

  @override
  String type() {
    return 'call';
  }
}
