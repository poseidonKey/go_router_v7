import 'package:f_go_rounter7/layout/default_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PushScreen extends StatelessWidget {
  const PushScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              context.push('/basic');
            },
            child: const Text('Push Basic'),
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/basic');
            },
            child: const Text('Go Basic'),
          ),
        ],
      ),
    );
  }
}
