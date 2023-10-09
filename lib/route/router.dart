import 'package:go_router/go_router.dart';

// 로그인이 됐는지 안됐는지
// true - login OK / false - login NO
bool authState = false;

// https://blog.codefactory.ai/ -> / -> path
// https://blog.codefactory.ai/flutter -> /flutter
// / -> home
// /basic -> basic screen
// /basic/named ->
// /named
final router = GoRouter(
  redirect: (context, state) {
    // return string (path) -> 해당 라우트로 이동한다 (path)
    // return null -> 원래 이동하려던 라우트로 이동한다.

    return null;
  },
  routes: [],
);
