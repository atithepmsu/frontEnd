import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQubW9CiT6rqUbz5c_th6hsGmrNchtbSLzILgH7wzBmHPC3fUOvt8wLIaEA7FGS8tDN6MJRlB4yyj3Xp7ODgXjNW1Oma0gi2Al2xa7uffo&usqp=CAE",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to My App',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // When the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                ),
                child: Text('Get Started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<Map<String, dynamic>> productDataList = [];

  Future<void> fetchData() async {
    String url = "http://172.20.10.3:8080/api/products/get/all";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body);
      if (decodedData is List) {
        setState(() {
          productDataList = List<Map<String, dynamic>>.from(decodedData);
        });
      } else {
        print("ข้อมูลที่ได้รับไม่ถูกต้อง");
      }
    } else {
      print("ไม่สามารถเชื่อมต่อ URL ได้");
    }
  }

  void onOrderNowClicked() {
    // เพิ่มโค้ดสำหรับการสั่งซื้อสินค้าที่คุณต้องการที่นี่
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: productDataList.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: productDataList.length,
              itemBuilder: (context, index) {
                Map<String, dynamic> product = productDataList[index];
                return Column(
                  children: <Widget>[
                    Image.network(product['img']),
                    Text('Product Name: ${product['productName']}'),
                    Text('Size: ${product['size']}'),
                    Text('Price: ${product['price']}'),
                    Text('Created At: ${product['createdAt']}'),
                    ElevatedButton(
                      onPressed: onOrderNowClicked, // เรียกใช้ฟังก์ชันเมื่อปุ่มถูกคลิก
                      child: Text('สั่งซื้อสินค้า'),
                    ),
                    Divider(),
                  ],
                );
              },
            ),
    );
  }
}
