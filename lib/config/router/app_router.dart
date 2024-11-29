import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/router/router_handlers.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

class AppRouter {
  static List<RouteBase> routes = [
    addRoute(path: '/', name: 'home', view: const HomeScreen()),
    addRoute(path: '/bottons', name: 'bottons', view: const ButtonsScreen()),
    addRoute(path: '/cards', name: 'cards', view: const CardsScreen()),
  ];

  static GoRouter router = GoRouter(initialLocation: '/', routes: routes);
}
