import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation:
      '/', // Si queremos probar una pantalla en especifico, podemos colocarla aqui de forma temporal
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(path: '/cards', builder: (context, state) => const CardsScreen()),
  ],
);
