import '/model/media.dart';
import '/service/base_service.dart';
import '/service/service.dart';

class MediaService {
  BaseService _service = Service();

  Future<List<Media>> fetchMediaList(String value) async {
    dynamic response = await _service.getResponse(value);
    final jsonData = response['results'] as List;
    List<Media> mediaList =
    jsonData.map((tagJson) => Media.fromJson(tagJson)).toList();
    return mediaList;
  }
}