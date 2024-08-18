import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:o_dynamic/core/helpers/extensions.dart';
import 'package:o_dynamic/core/network/i_remote_client.dart';
import 'package:o_dynamic/models/main_config.dart';
import 'package:o_dynamic/models/post.dart';
import 'package:o_dynamic/models/post_parameters.dart';
import 'package:o_dynamic/providers/states/list.dart';

class PostsNotifier extends StateNotifier<ListState<Post>> {
  static final futurePost =
      FutureProvider.family<Post, PostParameters>((ref, params) async {
    final IRemoteClient remoteClient = ref.read(IRemoteClient.instance);
    final url = "${ref.mainConfig.baseUrl}/${params.apiName}/${params.userId}";
    final data = await remoteClient.get(url);
    final Post post = Post.fromJson(data);
    return post;
  });

  static final provider =
      StateNotifierProvider<PostsNotifier, ListState<Post>>((ref) {
    return PostsNotifier(
        remoteClient: ref.read(IRemoteClient.instance),
        mainConfig: ref.mainConfig);
  });
  PostsNotifier({required this.remoteClient, required this.mainConfig})
      : super(InitialListState());
  final IRemoteClient remoteClient;
  final MainConfig mainConfig;

  Future<void> fetch(PostParameters postParameter) async {
    final url = "${mainConfig.baseUrl}/${postParameter.apiName}";
    log(" url $url");
    state = LoadingListState();
    try {
      final data = await remoteClient.get(url);
      final List<Post> list =
          (data as List).map((e) => Post.fromJson(e)).toList();
      state = LoadedListState(data: list);
    } catch (e) {
      print("eeeror $e");
      state = ErrorListState();
    }
  }
}
