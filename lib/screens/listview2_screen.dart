import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

  final options = const ["Daft Punk", "deadmau5", "Avicii"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Listview tipo 2",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              final artist = options[index];
              print(artist);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
