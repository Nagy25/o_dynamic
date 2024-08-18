import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:o_dynamic/core/network/remote_client.dart';

abstract class IRemoteClient {
  static final instance = Provider<IRemoteClient>((_) => RemoteClient());
  Future<dynamic> get(String url);
}
