// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NestedScreen extends StatefulWidget {
  final Widget child;

  const NestedScreen({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<NestedScreen> createState() => _NestedScreenState();
}

class _NestedScreenState extends State<NestedScreen> {
  int selectedIndex = 0;
  int getIndex(BuildContext context) {
    if (GoRouterState.of(context).matchedLocation == '/nested/a') {
      return 0;
    } else if (GoRouterState.of(context).matchedLocation == '/nested/b') {
      return 1;
    } else {
      return 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(GoRouterState.of(context).matchedLocation),
      ),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          if (index == 0) {
            context.go('/nested/a');
          } else if (index == 1) {
            context.go('/nested/b');
          } else {
            context.go('/nested/c');
          }
          setState(() {
            // getIndex(context);
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'person',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: 'notifications',
          ),
        ],
      ),
    );
  }
}
