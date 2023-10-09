import 'package:f_go_rounter7/screens/1_basic_screen.dart';
import 'package:f_go_rounter7/screens/2_named_screen.dart';
import 'package:f_go_rounter7/screens/3_push_screen.dart';
import 'package:f_go_rounter7/screens/4_pop_base_screen.dart';
import 'package:f_go_rounter7/screens/5_pop_return_screen.dart';
import 'package:f_go_rounter7/screens/6_path_param_screen.dart';
import 'package:f_go_rounter7/screens/7_query_parameter.dart';
import 'package:f_go_rounter7/screens/8_nested_child_screen.dart';
import 'package:f_go_rounter7/screens/8_nested_screen.dart';
import 'package:f_go_rounter7/screens/9_login_screen.dart';
import 'package:f_go_rounter7/screens/9_private_screen.dart';
import 'package:f_go_rounter7/screens/root_screen.dart';
import 'package:go_router/go_router.dart';

// 로그인이 됐는지 안됐는지
// true - login OK / false - login NO
bool authState = false;
final router = GoRouter(
  redirect: (context, state) {
    // return string (path) -> 해당 라우트로 이동한다 (path)
    // return null -> 원래 이동하려던 라우트로 이동한다.
    if (state.matchedLocation == '/login/private' && !authState) {
      return '/login';
    }

    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const RootScreen();
      },
      routes: [
        GoRoute(
          path: 'basic',
          builder: (context, state) {
            return const BasicScreen();
          },
        ),
        GoRoute(
          path: 'named',
          name: 'named_screen',
          builder: (context, state) {
            return const NamedScreen();
          },
        ),
        GoRoute(
          path: 'push',
          builder: (context, state) {
            return const PushScreen();
          },
        ),
        GoRoute(
          path: 'pop',
          builder: (context, state) {
            return const PopBaseScreen();
          },
          routes: [
            GoRoute(
              path: 'return',
              builder: (context, state) {
                return const PopReturnScreen();
              },
            )
          ],
        ),
        GoRoute(
          path: 'path_param/:id',
          builder: (context, state) {
            return const PathParamScreen();
          },
          routes: [
            GoRoute(
              path: ':name',
              builder: (context, state) {
                return const PathParamScreen();
              },
            )
          ],
        ),
        GoRoute(
          path: 'query_param',
          builder: (context, state) {
            return const QueryParameterScreen();
          },
        ),
        ShellRoute(
          builder: (context, state, child) {
            return NestedScreen(child: child);
          },
          routes: [
            // /nested/a
            GoRoute(
              path: 'nested/a',
              builder: (_, state) => const NestedChildScreen(
                routeName: '/nested/a',
              ),
            ),
            // /nested/b
            GoRoute(
              path: 'nested/b',
              builder: (_, state) => const NestedChildScreen(
                routeName: '/nested/b',
              ),
            ),
            // /nested/c
            GoRoute(
              path: 'nested/c',
              builder: (_, state) => const NestedChildScreen(
                routeName: '/nested/c',
              ),
            ),
          ],
        ),
        GoRoute(
          path: 'login',
          builder: (_, state) => const LoginScreen(),
          routes: [
            GoRoute(
              path: 'private',
              builder: (_, state) => const PrivateScreen(),
            ),
          ],
        ),
        GoRoute(
          path: 'login2',
          builder: (_, state) => const LoginScreen(),
          routes: [
            GoRoute(
              path: 'private',
              builder: (_, state) => const PrivateScreen(),
              // 현재 login2 상태에서만 동작 됨.
              redirect: (context, state) {
                if (!authState) {
                  return '/login2';
                }
                return null;
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
