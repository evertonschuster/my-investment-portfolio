import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      snap: false,
      floating: false,
      title: const CircleAvatar(
        child: Text("ES"),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.visibility_off_outlined),
          tooltip: 'Go to the next page',
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          tooltip: 'Go to the next page',
          onPressed: () {},
        )
      ],
      bottom: AppBar(
        title: const Text("Olá, Everton"),
      ),
    );
  }
}
