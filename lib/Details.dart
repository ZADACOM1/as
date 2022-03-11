import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart_screen.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
              child: Column(
            children: [
              Container(
                height: size.width,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFecf0f1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Banana',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      children: [
                        Text(
                          '\$ 1.49',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.lightGreen[700],
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(
                            Icons.remove_circle_outline,
                            size: 36.0,
                            color: Colors.lightGreen[200],
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(width: 16.0),
                        Text(
                          '01',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.lightGreen[700],
                          ),
                        ),
                        SizedBox(width: 16.0),
                        IconButton(
                          icon: Icon(
                            Icons.add_circle_outline,
                            size: 36.0,
                            color: Colors.lightGreen[700],
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => CartPage()));
                          },
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 36.0),
                      child: Text(
                        '12 pcs - 500 to 900 gm',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    Divider(
                      height: 1,
                    ),
                    SizedBox(height: 16),
                    Text('Details',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        'Pisang adalah buah yang dikenal luas di Indonesia. Buah pisang bisa dinikmati dengan berbagai cara: dimakan langsung, digoreng, dikukus, atau diolah bersama bahan lain. Tapi pisang tidak hanya enak, manfaatnya banyak.',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(24),
              child: Row(
                children: [
                  Container(
                    width: 54.0,
                    height: 54.0,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen[200],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.all(6.0),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.lightGreen,
                    ),
                  ),
                  SizedBox(width: 24.0),
                ],
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 60,
            child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                }),
          )
        ],
      ),
    );
  }
}
