import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/router/router_handlers.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

class AppRouter {
  static List<RouteBase> routes = [
    addRoute(path: '/', name: HomeScreen.name, view: const HomeScreen()),
    addRoute(
        path: '/bottons',
        name: ButtonsScreen.name,
        view: const ButtonsScreen()),
    addRoute(path: '/cards', name: CardsScreen.name, view: const CardsScreen()),
  ];

  static GoRouter router = GoRouter(initialLocation: '/', routes: routes);
}
