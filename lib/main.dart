import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.blue[700]),
              child: Column(
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(40),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.network(
                        "https://ih1.redbubble.net/image.5804326980.3903/st,extra_large,507x507-pad,600x600,f8f8f8.jpg",
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  Text("Kamonthep Kaengbuan", style: TextStyle(fontSize: 18)),
                  SizedBox(height: 10),
                  Text(
                    "Kamonthep.Kaengbuan@e-tech.ac.th",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.circular(300),
                          ),
                          child: Icon(Icons.phone, color: Colors.green),
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Text(
                              "เบอร์โทรศัพท์",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "065-549-9999",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.pink[100],
                            borderRadius: BorderRadius.circular(300),
                          ),
                          child: Icon(Icons.cake, color: Colors.red),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "วันเกิด",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "5 มีนาคม 2549",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                            borderRadius: BorderRadius.circular(300),
                          ),
                          child: Icon(Icons.pin_drop, color: Colors.orange),
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Text(
                              "ที่อยู่",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "ชลบุรี",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.purple[100],
                            borderRadius: BorderRadius.circular(300),
                          ),
                          child: Icon(Icons.school, color: Colors.black),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("การศึกษา"),
                            Text(
                              "วิทยาลัยเทคโนโลยีภาคตะวันออก (อี.เทค)",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 15),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/second'),
                      child: Text("Go To second"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        foregroundColor: Colors.white,
                        fixedSize: Size.infinite,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  child: ClipOval(
                    child: Image.network(
                      "https://wahswhirlwind.com/wp-content/uploads/2025/04/2673659_746f1.png",
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Column(children: [Text("5"), Text("กำลังติดตาม")]),
                ),
                SizedBox(width: 5),
                Container(width: 3, height: 60, color: Colors.grey),
                SizedBox(width: 10),
                Container(
                  child: Column(children: [Text("5"), Text("ผู้ติดตาม")]),
                ),
                SizedBox(width: 10),
                Container(width: 3, height: 60, color: Colors.grey),
                SizedBox(width: 5),
                Container(
                  child: Column(children: [Text("2M"), Text("ถูกใจและบันทึก")]),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 10),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Kamonthep Kaengbuan"),
                  Icon(Icons.verified, color: Colors.blueAccent),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.only(left: 10),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.tiktok),
                  Text("kamonthep001"),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.only(left: 20),
              width: 400,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushNamed(context, '/second'),
                      child: Text("ติดตาม"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        foregroundColor: Colors.white,
                        fixedSize: Size.infinite,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.share),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              child: Row(
                children: [
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_2yQpF9wByb1JYWNv5GGGqouo-Qsr44cTVw&s",
                    width: 200,
                    height: 200,
                  ),SizedBox(width: 5,),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTpCkDLRe1iN0BPMIWu-TXbaMPYb51IsBYpQ&s",
                    width: 200,
                    height: 200,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
