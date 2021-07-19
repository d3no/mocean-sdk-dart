import 'wa_template_basic.dart';
import '../content_builder/wa_audio_content_builder.dart';
import '../button/wa_button_basic.dart';

class WaAudioTemplate extends WaTemplateBasic {
  @override
  List requiredKey() {
    return ["name", "language", "body_params", "media_content"];
    ;
  }

  @override
  String type() {
    return 'audio';
  }

  WaAudioTemplate name(String name) {
    params['name'] = name;
    return this;
  }

  WaAudioTemplate language(String language) {
    params['language'] = language;
    return this;
  }

  WaAudioTemplate bodyParams(List bodyParams) {
    params['body_params'] = bodyParams;
    return this;
  }

  WaAudioTemplate headerParams(List headerParams) {
    params['header_params'] = headerParams;
    return this;
  }

  WaAudioTemplate waButtons(List<WaButtonBasic> buttons) {
    params['wa_buttons'] = buttons.map((e) => e.requestData).toList();
    return this;
  }

  WaAudioTemplate mediaContent(WaAudioContentBuilder mediaContent) {
    params['media_content'] = mediaContent.requestData;
    return this;
  }
}
