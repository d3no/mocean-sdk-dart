import 'wa_template_basic.dart';
import '../content_builder/wa_video_content_builder.dart';
import '../button/wa_button_basic.dart';

class WaVideoTemplate extends WaTemplateBasic {
  @override
  List requiredKey() {
    return ["name", "language", "body_params", "media_content"];
    ;
  }

  @override
  String type() {
    return 'document';
  }

  WaVideoTemplate name(String name) {
    params['name'] = name;
    return this;
  }

  WaVideoTemplate language(String language) {
    params['language'] = language;
    return this;
  }

  WaVideoTemplate bodyParams(List bodyParams) {
    params['body_params'] = bodyParams;
    return this;
  }

  WaVideoTemplate headerParams(List headerParams) {
    params['header_params'] = headerParams;
    return this;
  }

  WaVideoTemplate waButtons(List<WaButtonBasic> buttons) {
    params['wa_buttons'] = buttons.map((e) => e.requestData).toList();
    return this;
  }

  WaVideoTemplate mediaContent(WaVideoContentBuilder mediaContent) {
    params['media_content'] = mediaContent.requestData;
    return this;
  }
}
