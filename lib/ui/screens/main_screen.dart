import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:o_dynamic/core/helpers/extensions.dart';
import 'package:o_dynamic/providers/config_notifier.dart';
import 'package:o_dynamic/providers/states/states.dart';
import 'package:o_dynamic/theme/app_theme.dart';
import 'package:o_dynamic/ui/screens/dynamic/content_screen.dart';
import 'package:o_dynamic/ui/screens/new_abroach/new_content.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: context.height,
      width: context.width,
      child: Consumer(
        builder: (_, ref, __) {
          final state = ref.watch(ConfigNotifier.provider);
          if (state is ConfigLoadedState) {
            print("ffffff");
            return const _LoadedScreen();
          } else if (state is ConfigErrorState) {
            return const Text('error');
          } else if (state is ConfigLoadingState) {
            return const CircularProgressIndicator();
          }
          return const SizedBox();
        },
      ),
    );
  }
}

class _LoadedScreen extends ConsumerWidget {
  const _LoadedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appConfig =
        (ref.read(ConfigNotifier.provider) as ConfigLoadedState).config;

    final listItems = appConfig.items;
    return AppTheme(
        appColor: appConfig.appColor,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('title'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                    itemCount: listItems.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) {
                      final item = listItems[index];
                      return ListTile(
                        title: Text(item.title),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => ContentScreen(menuItem: item)));
                        },
                      );
                    }),
                ListView.builder(
                    itemCount: listItems.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) {
                      final item = listItems[index];
                      return ListTile(
                        title: Text("${item.title} ( new Way )"),
                        onTap: () {
                          final widget = SupportedClass().getWidget(item);

                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) => widget));
                        },
                      );
                    }),
              ],
            ),
          ),
        ));
  }
}
