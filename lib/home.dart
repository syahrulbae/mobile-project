import 'package:flutter/material.dart';
import 'package:flutter_hello/content.dart';
import 'package:flutter_hello/interaction_page.dart';
import 'package:flutter_hello/spacing.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Hello",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const RowWidget(),
            const SpaceH10(),
            Row(children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.yellow,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.green,
              )
            ]),
            const SpaceH10(),
            const CardContentSection(),
            const SpaceH10(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => InteractionPage(),
                    ));
              },
              child: const Text("Halaman Interaksi"),
            ),
            const CardContentSection(),
          ],
        ),
      ),
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        height: 50,
        width: 50,
        color: Colors.red,
      ),
      Container(
        height: 50,
        width: 50,
        color: Colors.blue,
      ),
      Container(
        height: 50,
        width: 50,
        color: Colors.black,
      )
    ]);
  }
}
