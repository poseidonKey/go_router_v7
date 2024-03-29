import 'package:f_go_rounter7/layout/default_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              context.go('/basic');
            },
            child: const Text('Go Basic'),
          ),
          ElevatedButton(
            onPressed: () {
              context.goNamed('named_screen');
            },
            child: const Text('Go Named'),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/push');
            },
            child: const Text('Go Push'),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/pop');
            },
            child: const Text('Go Pop'),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/path_param/456');
            },
            child: const Text('Go path_parameter'),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/query_param');
            },
            child: const Text('Go query_parameter'),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/nested/a');
            },
            child: const Text('Go Nested Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/login');
            },
            child: const Text('Go Login Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/login2');
            },
            child: const Text('Go Login2 Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/transition');
            },
            child: const Text('Go transition Screen'),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/error'); //router에 없는 이동 스크린
            },
            child: const Text('Go error Screen'),
          ),
        ],
      ),
    );
  }
}
