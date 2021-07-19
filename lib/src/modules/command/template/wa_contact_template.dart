import 'wa_template_basic.dart';
import '../content_builder/wa_contact_content_builder.dart';
import '../button/wa_button_basic.dart';

class WaContactTemplate extends WaTemplateBasic {
  @override
  List requiredKey() {
    return ["name", "language", "body_params", "media_content"];
    ;
  }

  @override
  String type() {
    return 'contact_detail';
  }

  WaContactTemplate name(String name) {
    params['name'] = name;
    return this;
  }

  WaContactTemplate language(String language) {
    params['language'] = language;
    return this;
  }

  WaContactTemplate bodyParams(List bodyParams) {
    params['body_params'] = bodyParams;
    return this;
  }

  WaContactTemplate headerParams(List headerParams) {
    params['header_params'] = headerParams;
    return this;
  }

  WaContactTemplate waButtons(List<WaButtonBasic> buttons) {
    params['wa_buttons'] = buttons.map((e) => e.requestData).toList();
    return this;
  }

  WaContactTemplate mediaContent(WaContactContentBuilder mediaContent) {
    params['media_content'] = mediaContent.requestData;
    return this;
  }
}
