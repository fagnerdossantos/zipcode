import '../../core/types.dart';

abstract interface class IZipCodeService {
  Future<APIResponse> fetch({required String code});
}
