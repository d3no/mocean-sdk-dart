import 'abstract_content_builder.dart';

class WaVideoContentBuilder extends AbstractContentBuilder {
  @override
  String type() {
    return 'video';
  }

  @override
  List requiredKey() {
    return ['rich_media_url'];
  }

  WaVideoContentBuilder richMediaUrl(String url) {
    params['rich_media_url'] = url;
    return this;
  }

  WaVideoContentBuilder text(String text) {
    params['text'] = text;
    return this;
  }
}
