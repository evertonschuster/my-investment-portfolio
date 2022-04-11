import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      semanticsLabel: 'Linear progress indicator',
      color: Theme.of(context).primaryColor,
    );
  }
}
