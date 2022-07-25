import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/method.dart';

void main() {
  runApp(const delete());
}

class delete extends StatefulWidget {
  const delete({Key? key}) : super(key: key);

  @override
  State<delete> createState() => _deleteState();
}

// ignore: camel_case_types
class _deleteState extends State<delete> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: const Method(),
    );
  }

  //______________________________1st Dialog Box________________

  // Future<String?> openDialog() => showDialog<String>(
  //       context: context,
  //       builder: (context) => AlertDialog(
  //         title: Text('Your Name'),
  //         content: MyStateFulWidget(),
  //         actions: [
  //           ElevatedButton(
  //             child: Text('Submit'),
  //             onPressed: submit,
  //           ),
  //         ],
  //       ),
  //     );

  //______________________________2nd Dialogbox_______________

}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyStateFulWidget(),
//     );
//   }
// }

//______________________Drop DOwn Menu______________________________

class MyStateFulWidget extends StatefulWidget {
  const MyStateFulWidget({Key? key}) : super(key: key);

  @override
  State<MyStateFulWidget> createState() => _MyStateFulWidgetState();
}

class _MyStateFulWidgetState extends State<MyStateFulWidget> {
  String dropdownValue1 = 'Select Section';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue1,
      isExpanded: true,
      dropdownColor: Color.fromARGB(255, 27, 21, 49),
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Colors.white, fontSize: 22),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue1) {
        setState(() {
          dropdownValue1 = newValue1!;
        });
      },
      items: <String>[
        'Select Section',
        'Front Section',
        'Back Section',
        'Assembly Section'
      ].map<DropdownMenuItem<String>>((String value1) {
        return DropdownMenuItem<String>(
          value: value1,
          child: Text(value1),
        );
      }).toList(),
    );
  }
}
