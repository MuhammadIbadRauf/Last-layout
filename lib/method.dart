import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class Method extends StatefulWidget {
  const Method({Key? key}) : super(key: key);

  @override
  State<Method> createState() => _MethodState();
}

class _MethodState extends State<Method> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SMART AUDIT'),
        backgroundColor: Colors.black,
      ),
      // ignore: avoid_unnecessary_containers
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              openDialog();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => delete()));
            },
            child: const Text('Submit'),
          ),
        ),
      ),
    );
  }

  //Method

  Future<String?> openDialog() => showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Your Name'),
          content: const MyStateFulWidget(),
          actions: [
            ElevatedButton(
              onPressed: () {
                anotherDialog() == null ? anotherDialog() : Dialog();
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      );

  void submit() {
    Navigator.of(context).pop();
  }

  //Method 2

  Future anotherDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Do You Want To Add Another Defect?'),
          actions: [
            ElevatedButton(
              child: const Text('Yes'),
              onPressed: () {
                openDialog();
              },
            ),
            ElevatedButton(
              child: const Text('No'),
              onPressed: () {
                anotherDialog();
              },
            )
          ],
        ),
      );
}
