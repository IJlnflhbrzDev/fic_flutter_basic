import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/01-tugas_dialog_widget.dart';
import 'package:project_flutter_pertama/tugas/02-tugas_form_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Tugas Hasil Tulis Ulang Code"),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: const [TugasDialogWidget(), TugasFormWidget()],
        ),
      ),
    );
  }
}
