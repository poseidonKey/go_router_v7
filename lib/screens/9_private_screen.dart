import 'package:f_go_rounter7/layout/default_layout.dart';
import 'package:flutter/material.dart';

class PrivateScreen extends StatelessWidget {
  const PrivateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      body: Center(
        child: Text('Private Screen'),
      ),
    );
  }
}
