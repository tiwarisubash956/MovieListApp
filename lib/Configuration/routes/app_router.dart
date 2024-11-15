import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
        ),
        AutoRoute(
          page: SplashRoute.page,
        ),
        AutoRoute(page: MoviesRoute.page),
        AutoRoute(page: SearchRoute.page),
        AutoRoute(page: MovieDetailRoute.page),
        AutoRoute(
          page: SignUpRoute.page,
        ),
        AutoRoute(page: Signinscreen.page, initial: true)
      ];
}
