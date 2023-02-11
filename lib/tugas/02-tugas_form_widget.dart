import 'package:flutter/material.dart';

class TugasFormWidget extends StatefulWidget {
  const TugasFormWidget({super.key});

  @override
  State<TugasFormWidget> createState() => _TugasFormWidgetState();
}

class _TugasFormWidgetState extends State<TugasFormWidget> {
  bool isOn = false;
  var selected = 'Flutter';
  final dropdownList = <String>['Flutter', 'Dart', 'Java', 'Scala', 'Python'];

  String sex = 'male';
  bool isChecked = false;
  TextEditingController textEditingController =
      TextEditingController(text: 'IJlal Naufal Hibrizi');
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            maxLength: 20, // untuk memberi batas inputan
            controller: textEditingController,
            decoration: const InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(
                  color: Colors.blueGrey,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                  ),
                ),
                helperText: "what's your name?"),
            onChanged: (value) => print(value), // untuk mendapatkan data input
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('Your Favorite Language'),
              const SizedBox(width: 8),
              DropdownButton(
                value: selected.isNotEmpty ? selected : null,
                icon: const Icon(Icons.arrow_downward),
                iconSize: 20,
                style: TextStyle(color: Colors.blue[600]),
                underline: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 3,
                      ),
                    ),
                  ),
                ),
                items: dropdownList
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (String? val) {
                  setState(
                    () {
                      if (val != null) selected = val;
                    },
                  );
                },
              ),
            ],
          ),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              bool isTablet = MediaQuery.of(context).size.width < 1100 &&
                  MediaQuery.of(context).size.width >= 850;
              bool isDesktop = MediaQuery.of(context).size.width >= 1100;
              bool isMobile = MediaQuery.of(context).size.width < 850;

              if (isDesktop) {
                return Container(
                  color: Colors.red,
                  child: const Text('LAYOUT BUILDER DI MODE DEKSTOP'),
                );
              }

              if (isTablet) {
                return Container(
                  color: Colors.green,
                  child: const Text('LAYOUT BUILDER DI MODE TABLET'),
                );
              }

              //mobile
              return Container(
                color: Colors.blue,
                child: const Text('LAYOUT BUILDER DI MODE MOBILE'),
              );
            },
          ),
        ],
      ),
    );
  }
}
