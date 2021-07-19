import 'abstract_content_builder.dart';

class WaPhotoContentBuilder extends AbstractContentBuilder {
  @override
  String type() {
    return 'photo';
  }

  @override
  List requiredKey() {
    return ['rich_media_url'];
  }

  WaPhotoContentBuilder richMediaUrl(String url) {
    params['rich_media_url'] = url;
    return this;
  }

  WaPhotoContentBuilder text(String text) {
    params['text'] = text;
    return this;
  }
}
