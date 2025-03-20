import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counterprovider.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    return Row(
        children: [
          Text("Count: ${counter.count}",style: TextStyle(fontSize: 20)),
          ElevatedButton(onPressed: counter.increment, child: Text("Increment")),
          ElevatedButton(onPressed: counter.decrement, child: Text("Decrement"))
        ],
    );
  }
}
