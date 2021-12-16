library client;

import 'package:client/src/api_client.dart';
import 'package:client/src/environment.dart';

export 'src/api_client.dart';
export 'src/environment.dart';
export 'src/exceptions/exceptions.dart';
export 'src/interceptors/interceptors.dart';
export 'src/resources/resources.dart';

void main() async {
  await ApiClient(Development()).characterResource.fetchList();
}
