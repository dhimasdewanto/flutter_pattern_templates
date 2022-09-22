import 'package:go_router/go_router.dart';

import '../../feature/news/domain/entities/article.dart';
import '../../feature/news/presentation/pages/news_detail_page.dart';
import '../../feature/news/presentation/pages/news_list_page.dart';

GoRouter getRouter() {
  return GoRouter(
    initialLocation: "/news",
    routes: [
      GoRoute(
        path: '/news',
        builder: (context, state) {
          return const NewsListPage();
        },
        routes: [
          GoRoute(
            path: 'detail',
            builder: (context, state) {
              final article = state.extra;
              return NewsDetailPage(
                article: article as Article,
              );
            },
          ),
        ],
      ),
    ],
  );
}
