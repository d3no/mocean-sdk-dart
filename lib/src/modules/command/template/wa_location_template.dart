import 'wa_template_basic.dart';
import '../button/wa_button_basic.dart';
import '../content_builder/wa_location_content_builder.dart';

class WaLocationTemplate extends WaTemplateBasic {
  @override
  List requiredKey() {
    return ["name", "language", "body_params", "media_content"];
    ;
  }

  @override
  String type() {
    return 'location';
  }

  WaLocationTemplate name(String name) {
    params['name'] = name;
    return this;
  }

  WaLocationTemplate language(String language) {
    params['language'] = language;
    return this;
  }

  WaLocationTemplate bodyParams(List bodyParams) {
    params['body_params'] = bodyParams;
    return this;
  }

  WaLocationTemplate headerParams(List headerParams) {
    params['header_params'] = headerParams;
    return this;
  }

  WaLocationTemplate waButtons(List<WaButtonBasic> buttons) {
    params['wa_buttons'] = buttons.map((e) => e.requestData).toList();
    return this;
  }

  WaLocationTemplate mediaContent(WaLocationContentBuilder mediaContent) {
    params['media_content'] = mediaContent.requestData;
    return this;
  }
}
