import 'package:flutter/material.dart';
import 'package:flutter_hello/spacing.dart';

class InteractionPage extends StatelessWidget {
  const InteractionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Interaksi"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          SpaceH10(),
          OutlinedButton(
              onPressed: () {
                final SnackBar tampil = SnackBar(
                  content: const Text("Ini data di SnackBar"),
                  action: SnackBarAction(label: "tutup", onPressed: () {}),
                );
                ScaffoldMessenger.of(context).showSnackBar(tampil);
              },
              child: Text("Klik SnackBar"))
        ],
      ),
    );
  }
}
