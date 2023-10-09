import 'package:f_go_rounter7/layout/default_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QueryParameterScreen extends StatelessWidget {
  const QueryParameterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // GoRouterState.of(context).uri;
    return DefaultLayout(
      body: ListView(
        children: [
          // uri로 바뀜.
          Text('Query Parameter : ${GoRouterState.of(context).uri}'),
          // /query_parameter?utm=google&source=123
          // /query_parameter?name=codefactory&age=32
          ElevatedButton(
            onPressed: () {
              context.push(
                Uri(
                  path: '/query_param',
                  queryParameters: {
                    // map이고 모든 건 string으로 해야 함.
                    'name': 'codefactory',
                    'age': '32',
                  },
                ).toString(),
              );
            },
            child: const Text('Query Parameter'),
          ),
        ],
      ),
    );
  }
}
