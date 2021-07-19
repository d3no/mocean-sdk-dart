import 'wa_template_basic.dart';
import '../button/wa_button_basic.dart';

class WaTextTemplate extends WaTemplateBasic {
  @override
  List requiredKey() {
    return ["name", "language", "body_params"];
    ;
  }

  @override
  String type() {
    return 'audio';
  }

  WaTextTemplate name(String name) {
    params['name'] = name;
    return this;
  }

  WaTextTemplate language(String language) {
    params['language'] = language;
    return this;
  }

  WaTextTemplate bodyParams(List bodyParams) {
    params['body_params'] = bodyParams;
    return this;
  }

  WaTextTemplate headerParams(List headerParams) {
    params['header_params'] = headerParams;
    return this;
  }

  WaTextTemplate waButtons(List<WaButtonBasic> buttons) {
    params['wa_buttons'] = buttons.map((e) => e.requestData).toList();
    return this;
  }
}
