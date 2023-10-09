import 'package:f_go_rounter7/layout/default_layout.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      body: Center(
        child: Text('Basic Screen'),
      ),
    );
  }
}
