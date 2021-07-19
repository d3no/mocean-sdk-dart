import 'abstract_content_builder.dart';
import '../template/wa_template_basic.dart';

class WaTemplateContentBuilder extends AbstractContentBuilder {
  @override
  String type() {
    return 'template';
  }

  @override
  List requiredKey() {
    return ['wa_template'];
  }

  WaTemplateContentBuilder waTemplate(WaTemplateBasic template) {
    params['wa_template'] = template.requestData;
    return this;
  }
}