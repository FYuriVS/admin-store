import 'package:admin_store/core/routing/routes.dart';
import 'package:admin_store/features/home/presentation/screens/home_screen.dart';
import 'package:admin_store/features/products/products_screen.dart';
import 'package:go_router/go_router.dart';

GoRouter routerConfig() {
  return GoRouter(
    initialLocation: Routes.home,
    routes: [
      GoRoute(path: Routes.home, builder: (context, state) => HomeScreen()),
      GoRoute(
        path: Routes.products,
        builder: (context, state) => ProductsScreen(),
      ),
    ],
  );
}
