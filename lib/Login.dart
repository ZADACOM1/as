import 'package:flutter/material.dart';

import 'Isi_Form.dart';
import 'package:my_app/my_app.dart';
import 'helper.dart';

import 'Date_Picker.dart';

class Login extends StatelessWidget {
  final dateController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: Helper.getScreenWidth(context),
            height: Helper.getScreenHeight(context),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Color.fromARGB(255, 168, 131, 255),
                    Color.fromARGB(255, 168, 131, 255),
                    Color.fromARGB(255, 168, 131, 255)
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 80),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Annisa Grocery",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Isi dengan benar formulir di bawah berikut!",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 60,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromARGB(252, 135, 51, 231),
                                      blurRadius: 20,
                                      offset: Offset(0, 10))
                                ],
                              ),
                              child: Container(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 16),
                                      child: TextFormField(
                                        keyboardType: TextInputType.name,
                                        decoration: new InputDecoration(
                                          hintText: "contoh: Annisa Lee",
                                          labelText: "Nama Lengkap",
                                          icon: Icon(Icons.people),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                new BorderRadius.circular(5.0),
                                          ),
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 16),
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,
                                        decoration: new InputDecoration(
                                          hintText: "contoh: 0123456789",
                                          labelText: "Nomor Telepon",
                                          icon: Icon(Icons.call),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      5.0)),
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 16),
                                      child: TextFormField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: new InputDecoration(
                                          hintText:
                                              "contoh: annisalee24@gmail.com",
                                          labelText: "Nama Email",
                                          icon: Icon(Icons.email),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                new BorderRadius.circular(5.0),
                                          ),
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 16),
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
                                            lastDate: DateTime(2100),
                                          );
                                          dateController.text =
                                              date.toString().substring(0, 10);
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
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeScreen()));
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
