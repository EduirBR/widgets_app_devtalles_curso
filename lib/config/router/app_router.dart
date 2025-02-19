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
    addRoute(
        path: '/progress',
        name: ProgressScreen.name,
        view: const ProgressScreen()),
    addRoute(
        path: '/snackbars',
        name: SnackbarScreen.name,
        view: const SnackbarScreen()),
    addRoute(
        path: '/animated',
        name: AnimatedScreen.name,
        view: const AnimatedScreen()),
    addRoute(
        path: '/ui-controls',
        name: UIControlsScreen.name,
        view: const UIControlsScreen()),
    addRoute(
        path: '/app-tutorial',
        name: AppTutorialScreen.name,
        view: const AppTutorialScreen()),
    addRoute(
        path: '/iscroll',
        name: InfiniteScroolScreen.name,
        view: const InfiniteScroolScreen()),
    addRoute(
        path: '/counters',
        name: CounterScreen.name,
        view: const CounterScreen()),
    addRoute(
        path: '/themes',
        name: ThemeChangerScreen.name,
        view: const ThemeChangerScreen()),
  ];

  static GoRouter router = GoRouter(initialLocation: '/', routes: routes);
}
