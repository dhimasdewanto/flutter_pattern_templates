import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../core/abstracts/event_widget.dart';
import '../../../../core/configs/app_configs.dart';
import '../../domain/entities/article.dart';
import '../providers/news_list_provider.dart';

class NewsListPage extends ConsumerWidget {
  const NewsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(newsListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConfigs.appName),
      ),
      body: EventWidget(
        initState: () {
          provider.init();
        },
        dispose: () {
          provider.dis();
        },
        builder: (context) {
          return PagedListView(
            pagingController: provider.pagingController,
            builderDelegate: PagedChildBuilderDelegate<Article>(
              itemBuilder: (context, article, index) {
                return Card(
                  child: ListTile(
                    title: Text(article.title),
                    subtitle: Text(article.description),
                    onTap: () {
                      context.go(
                        "/news/detail",
                        extra: article,
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
