import 'wa_template_basic.dart';
import '../content_builder/wa_photo_content_builder.dart';
import '../button/wa_button_basic.dart';

class WaPhotoTemplate extends WaTemplateBasic {
  @override
  List requiredKey() {
    return ["name", "language", "body_params", "media_content"];
    ;
  }

  @override
  String type() {
    return 'photo';
  }

  WaPhotoTemplate name(String name) {
    params['name'] = name;
    return this;
  }

  WaPhotoTemplate language(String language) {
    params['language'] = language;
    return this;
  }

  WaPhotoTemplate bodyParams(List bodyParams) {
    params['body_params'] = bodyParams;
    return this;
  }

  WaPhotoTemplate headerParams(List headerParams) {
    params['header_params'] = headerParams;
    return this;
  }

  WaPhotoTemplate waButtons(List<WaButtonBasic> buttons) {
    params['wa_buttons'] = buttons.map((e) => e.requestData).toList();
    return this;
  }

  WaPhotoTemplate mediaContent(WaPhotoContentBuilder mediaContent) {
    params['media_content'] = mediaContent.requestData;
    return this;
  }
}
