import 'package:flutter/material.dart';
import 'package:flutter_application_1/Date_Picker.dart';
import 'package:flutter_application_1/Isi_Form.dart';
import 'package:flutter_application_1/Login.dart';
import 'package:flutter_application_1/Details.dart';
import 'package:flutter_application_1/cart_screen.dart';

void main() => runApp(MaterialApp(
    title: "Form Flutter",
    debugShowCheckedModeBanner: false,
    home: CartPage(),
    routes: {}));

class BelajarForm extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();
  final dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: new InputDecoration(
                    hintText: "contoh: Annisa Lee",
                    labelText: "Nama Lengkap",
                    icon: Icon(Icons.people),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    hintText: "contoh: 0123456789",
                    labelText: "Nomor Telepon",
                    icon: Icon(Icons.call),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nomor tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: new InputDecoration(
                    hintText: "contoh: annisalee24@gmail.com",
                    labelText: "Nama Email",
                    icon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama Email tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  readOnly: true,
                  controller: dateController,
                  decoration: InputDecoration(
                      icon: Icon(Icons.calendar_today),
                      border: OutlineInputBorder(),
                      hintText: 'Pick your Date'),
                  onTap: () async {
                    var date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100));

                    dateController.text = date.toString().substring(0, 10);
                  },
                ),
              ),
              RaisedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.deepPurpleAccent,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DatePicker()));
                  if (_formKey.currentState!.validate()) {}
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
