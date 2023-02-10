// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/meet_2/ch4topic1/stateless_stateful_widget.dart';
import 'package:project_flutter_pertama/tugas/01-tugas_dialog_widget.dart';

class FICColumnWidget extends StatefulWidget {
  const FICColumnWidget({Key? key}) : super(key: key);

  @override
  State<FICColumnWidget> createState() => _FICColumnWidgetState();
}

class _FICColumnWidgetState extends State<FICColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Binar - Stateless Statefull"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [
              ShowText(text: 'Show Text Staeless'),
              ChangeTextWidget(),

              // TUGAS TULIS ULANG HASIL MEET 2
              TugasDialogWidget()
            ],
          ),
        ),
      ),
    );
  }
}
