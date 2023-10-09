import 'package:f_go_rounter7/layout/default_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PopBaseScreen extends StatelessWidget {
  const PopBaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () async {
              final result = await context.push('/pop/return');

              print(result);
            },
            child: const Text('Push Pop Return Screen'),
          ),
        ],
      ),
    );
  }
}
