import 'abstract_content_builder.dart';

class WaStickerContentBuilder extends AbstractContentBuilder {
  @override
  String type() {
    return 'sticker';
  }

  @override
  List requiredKey() {
    return ['rich_media_url'];
  }

  WaStickerContentBuilder richMediaUrl(String url) {
    params['rich_media_url'] = url;
    return this;
  }

  WaStickerContentBuilder text(String text) {
    params['text'] = text;
    return this;
  }
}
