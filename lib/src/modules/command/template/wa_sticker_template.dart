import 'wa_template_basic.dart';
import '../content_builder/wa_sticker_content_builder.dart';
import '../button/wa_button_basic.dart';

class WaStickerTemplate extends WaTemplateBasic {
  @override
  List requiredKey() {
    return ["name", "language", "body_params", "media_content"];
    ;
  }

  @override
  String type() {
    return 'document';
  }

  WaStickerTemplate name(String name) {
    params['name'] = name;
    return this;
  }

  WaStickerTemplate language(String language) {
    params['language'] = language;
    return this;
  }

  WaStickerTemplate bodyParams(List bodyParams) {
    params['body_params'] = bodyParams;
    return this;
  }

  WaStickerTemplate headerParams(List headerParams) {
    params['header_params'] = headerParams;
    return this;
  }

  WaStickerTemplate waButtons(List<WaButtonBasic> buttons) {
    params['wa_buttons'] = buttons.map((e) => e.requestData).toList();
    return this;
  }

  WaStickerTemplate mediaContent(WaStickerContentBuilder mediaContent) {
    params['media_content'] = mediaContent.requestData;
    return this;
  }
}
