import 'package:go_router/go_router.dart';
import 'package:imdb_clone/app/navigation/app_route.dart';
import 'package:imdb_clone/app/ui/screens/main/main_screen.dart';
import 'package:imdb_clone/app/ui/screens/main/main_screen_view_model.dart';
import 'package:imdb_clone/app/ui/screens/splash/splash_screen.dart';
import 'package:imdb_clone/app/ui/screens/splash/splash_screen_view_model.dart';

class AppRouterConfig {
  late final GoRouter router = GoRouter(
      routes: _router,
      initialLocation: AppRoute.root,
  );

  void dispose(){

  }

  late final _router = <RouteBase>[
   GoRoute(
     path: '/',
     name: AppRoute.root,
     builder: (context, state) => SplashScreen(
           viewModel: SplashScreenViewModel(),
       ),
   ),

    GoRoute(
        path: '/main',
        name: AppRoute.main,
        builder: (context, state) => MainScreen(viewModel: MainScreenViewModel(),)
    ),
  ];
}