import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:o_dynamic/models/post.dart';
import 'package:o_dynamic/providers/states/list.dart';

class PostsNotifier extends StateNotifier<ListState<Post>> {
  PostsNotifier() : super(InitialListState());
}
