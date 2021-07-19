import 'abstract_mc.dart';
import '../content_builder/wa_contact_content_builder.dart';

class WaSendContact extends AbstractMc {
  @override
  String action() {
    return 'send-whatsapp';
  }

  @override
  List requiredKey() {
    return ['from', 'to', 'content'];
  }

  WaSendContact from(String id, [String type = 'bot_username']) {
    params['from'] = {
      'type': type,
      'id': id,
    };
    return this;
  }

  WaSendContact to(String id, [String type = 'phone_num']) {
    params['to'] = {
      'type': type,
      'id': id,
    };
    return this;
  }

  WaSendContact content(WaContactContentBuilder contentBuilder) {
    params['content'] = contentBuilder.requestData;
    return this;
  }
}
