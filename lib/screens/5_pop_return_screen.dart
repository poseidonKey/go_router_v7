import 'package:f_go_rounter7/layout/default_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PopReturnScreen extends StatelessWidget {
  const PopReturnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              context.pop('Code Factory');
            },
            child: const Text('Pop'),
          ),
        ],
      ),
    );
  }
}
