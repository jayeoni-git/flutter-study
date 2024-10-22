import 'package:flutter/material.dart';

class MyThirdPage extends StatelessWidget {
  const MyThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text("세번째 페이지"), // 수정됨
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         Navigator.of(context).popUntil((route) => route.isFirst);
      //       },
      //       icon: Icon(Icons.home),
      //     )
      //   ],
      // ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green, // 수정됨
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "세번째 페이지입니다.", // 수정됨
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // 수정됨
              ),
              onPressed: () {
                Navigator.pop(context); // 부모 화면으로 돌아 가는 코드
              },
              child: Text(
                "두번째 페이지로 이동",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
