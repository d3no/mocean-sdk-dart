import 'wa_button_basic.dart';

class WaUrlParameterButton extends WaButtonBasic {
  @override
  List requiredKey() {
    return ['url_params'];
  }

  @override
  String type() {
    return 'url';
  }

  WaUrlParameterButton urlParameter(String urlParameter) {
    params['url_parameter'] = urlParameter;
    return this;
  }
}
