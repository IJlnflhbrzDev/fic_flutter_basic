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
    return Container(
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
                        children: const [Text('Tugas Your Order Was Placed!')],
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
          ),
          ElevatedButton(
            onPressed: () async {
              showBottomSheet(
                context: context,
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // MAIN AXIS SIZE ITU TIDAK
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text('Your Order Was Placed!'),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('OK'))
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: const Text('Tugas Open Bottom Sheet'),
          ), // Noted: End Button Bottom Sheet

          ElevatedButton(
            onPressed: () async {
              bool confirm = false;
              await showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    child: Wrap(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                'Confirm',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.grey[600],
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('NO'),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blueGrey,
                                    ),
                                    onPressed: () {
                                      confirm = true;
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Yes'),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
              if (confirm) {
                print('confirmed');
              }
            },
            child: const Text(
                'Tugas Open Bottomsheet conditional boolean confirmation '),
          ), // Noted:  End Button ShowModalBottomSheeet  confirmation
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Tugas You Request is successfuly'),
                  backgroundColor: Colors.blue,
                ),
              );
            },
            child: const Text('Tugas Open Snackbar'),
          )
        ],
      ),
    );
  }
}
