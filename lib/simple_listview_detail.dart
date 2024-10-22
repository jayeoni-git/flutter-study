import 'package:flutter/material.dart';
import 'third_page.dart'; // 상대 경로
// import 'package:bottom_navigation_bar/my_third_page.dart'; // 절대 경로

class SimpleListViewDetail extends StatelessWidget {
  const SimpleListViewDetail({super.key, required this.id, required this.password});

  final int id;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("두번째 페이지"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "인자/속성으로 받아온 ID와 PW - ${id}/${password}", // 수정됨
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "두번째 페이지입니다.",
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent, // 수정됨
              ),
              onPressed: () {
                Navigator.pop(context); // 부모 화면으로 돌아 가는 코드
              },
              child: Text(
                "첫번째 페이지로 이동",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // 수정됨
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => MyThirdPage()),
                );
              },
              child: Text(
                "세번째 페이지로 이동",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
