import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/data.dart';

class Receive extends StatelessWidget {
  const Receive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<Data>(context);
    return Scaffold(
      body: Center(
        child: Text(providerData.value.toString(),style: const TextStyle(fontSize: 30)),
      ),
    );
  }
}
