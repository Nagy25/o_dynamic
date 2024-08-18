import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:o_dynamic/models/menu_item.dart';
import 'package:o_dynamic/models/post.dart';
import 'package:o_dynamic/models/post_parameters.dart';
import 'package:o_dynamic/providers/posts_notifier.dart';
import 'package:o_dynamic/providers/states/list.dart';
import 'package:o_dynamic/ui/screens/dynamic/daynmic_screen.dart';

class PostsScreen extends DaynmicScreen {
  final MenuItem menuItem;
  const PostsScreen({super.key, required this.menuItem});

  @override
  Widget build(
    BuildContext context,
  ) {
    return _PostsContent(
      item: menuItem,
    );
  }
}

class _PostsContent extends ConsumerStatefulWidget {
  final MenuItem item;
  const _PostsContent({super.key, required this.item});

  @override
  ConsumerState<_PostsContent> createState() => _PostsContentState();
}

class _PostsContentState extends ConsumerState<_PostsContent> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final PostParameters parameters =
          PostParameters.fromJson(widget.item.parameters);
      ref.read(PostsNotifier.provider.notifier).fetch(parameters.apiName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(builder: (_, ref, __) {
        final state = ref.watch(PostsNotifier.provider);
        if (state is LoadingListState) {
          return Center(child: CircularProgressIndicator());
        } else if (state is ErrorListState) {
          return Text('error');
        } else if (state is LoadedListState) {
          final List<Post> list = (state as LoadedListState).data as List<Post>;
          ListView.builder(itemBuilder: (_, index) {
            final item = list[index];
            return ListTile(
              title: Text(item.title),
              subtitle: Text(item.body),
            );
          });
        }
        return SizedBox();
      }),
    );
  }
}
