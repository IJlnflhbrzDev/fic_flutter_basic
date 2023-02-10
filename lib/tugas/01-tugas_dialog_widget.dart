// ignore_for_file: file_names
import 'package:flutter/material.dart';

class TugasDialogWidget extends StatefulWidget {
  const TugasDialogWidget({super.key});

  @override
  State<TugasDialogWidget> createState() => _TugasDialogWidgetState();
}

class _TugasDialogWidgetState extends State<TugasDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                await showDialog<void>(
                  context: context,
                  barrierDismissible: true,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Tugas Info'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: const [
                            Text('Tugas Your Order Was Placed!')
                          ],
                        ),
                      ),
                      actions: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Tugas OK'))
                      ],
                    );
                  },
                );
              },
              child: const Text('Tugas Open Dialog'),
            ),
            const SizedBox(
              width: 8,
            )
          ],
        ),
      ),
    );
  }
}
