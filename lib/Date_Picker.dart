import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: DatePicker(),
    );
  }
}

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final dateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget builddate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Date",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: (6),
                    offset: Offset(0, 2)),
              ]),
          height: 60,
          child: TextFormField(
            keyboardType: TextInputType.datetime,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.calendar_today,
                  color: Color(0xff5ac1Be),
                ),
                hintText: 'Date',
                hintStyle: TextStyle(color: Colors.black38)),
            readOnly: true,
            controller: dateController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Date tidak boleh kosong';
              }

              return null;
            },
            onTap: () async {
              var date = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime(2100),
                builder: (context, child) {
                  return Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Container(
                          height: 500,
                          width: 300,
                          child: child,
                        ),
                      ),
                    ],
                  );
                },
              );
              dateController.text = date.toString().substring(0, 10);
            },
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
