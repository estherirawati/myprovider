import 'package:flutter/material.dart';
import 'package:myprovider/counterprovider.dart';
import 'package:myprovider/counterview.dart';
import 'package:myprovider/donetodoprovider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Done App"),
        ),
        body: Consumer<DoneTodoProvider>(
          builder: (context, DoneTodoProvider data, Widget? child) {
            return Column(
              children: [
                CounterView(),
                /*ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(data.doneTodoList[index]),
                    );
                  },
                  itemCount: data.doneTodoList.length,
                ),*/
              ],
            );
          },
        ));
  }
}
