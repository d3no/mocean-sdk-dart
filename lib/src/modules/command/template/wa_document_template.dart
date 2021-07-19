import 'wa_template_basic.dart';
import '../content_builder/wa_document_content_builder.dart';
import '../button/wa_button_basic.dart';

class WaDocumentTemplate extends WaTemplateBasic {
  @override
  List requiredKey() {
    return ["name", "language", "body_params", "media_content"];
    ;
  }

  @override
  String type() {
    return 'document';
  }

  WaDocumentTemplate name(String name) {
    params['name'] = name;
    return this;
  }

  WaDocumentTemplate language(String language) {
    params['language'] = language;
    return this;
  }

  WaDocumentTemplate bodyParams(List bodyParams) {
    params['body_params'] = bodyParams;
    return this;
  }

  WaDocumentTemplate headerParams(List headerParams) {
    params['header_params'] = headerParams;
    return this;
  }

  WaDocumentTemplate waButtons(List<WaButtonBasic> buttons) {
    params['wa_buttons'] = buttons.map((e) => e.requestData).toList();
    return this;
  }

  WaDocumentTemplate mediaContent(WaDocumentContentBuilder mediaContent) {
    params['media_content'] = mediaContent.requestData;
    return this;
  }
}
