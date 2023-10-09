import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DefaultLayout extends StatelessWidget {
  final Widget body;

  const DefaultLayout({
    required this.body,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            GoRouterState.of(context).matchedLocation,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: body,
      ),
    );
  }
}
