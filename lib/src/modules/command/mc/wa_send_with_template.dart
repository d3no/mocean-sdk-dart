import 'abstract_mc.dart';
import '../content_builder/wa_template_content_builder.dart';

class WaSendWithTemplate extends AbstractMc {
  @override
  String action() {
    return 'send-whatsapp';
  }

  @override
  List requiredKey() {
    return ['from', 'to', 'content'];
  }

  WaSendWithTemplate from(String id, [String type = 'bot_username']) {
    params['from'] = {
      'type': type,
      'id': id,
    };
    return this;
  }

  WaSendWithTemplate to(String id, [String type = 'phone_num']) {
    params['to'] = {
      'type': type,
      'id': id,
    };
    return this;
  }
  
  WaSendWithTemplate content(WaTemplateContentBuilder contentBuilder) {
    params['content'] = contentBuilder.requestData;
    return this;
  }
}
