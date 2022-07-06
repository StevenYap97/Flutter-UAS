import 'package:flutter/material.dart';

class Pertemuan14 extends StatefulWidget {
  Pertemuan14({Key? key}) : super(key: key);

  @override
  State<Pertemuan14> createState() => _Pertemuan14State();
}

class _Pertemuan14State extends State<Pertemuan14> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  tampiltanggal() {
    String tgl = '';
    return Row(children: [
      IconButton(
          onPressed: () async {
            var datatgl = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2040));

            if (datatgl == null) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('')));
            } else
              Text('');
          },
          icon: Icon(Icons.date_range)),

      // InputDatePickerFormField(firstDate: firstDate, lastDate: lastDate)    ],
    ]);
  }
}

//intl flutter for time format