import 'abstract_mc.dart';
import '../content_builder/wa_sticker_content_builder.dart';

class WaSendSticker extends AbstractMc {
  @override
  String action() {
    return 'send-whatsapp';
  }

  @override
  List requiredKey() {
    return ['from', 'to', 'content'];
  }

  WaSendSticker from(String id, [String type = 'bot_username']) {
    params['from'] = {
      'type': type,
      'id': id,
    };
    return this;
  }

  WaSendSticker to(String id, [String type = 'phone_num']) {
    params['to'] = {
      'type': type,
      'id': id,
    };
    return this;
  }

  WaSendSticker content(WaStickerContentBuilder contentBuilder) {
    params['content'] = contentBuilder.requestData;
    return this;
  }
}
