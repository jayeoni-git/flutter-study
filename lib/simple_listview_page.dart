import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'package:untitled/simple_listview_detail.dart';


class SimpleListviewPage extends StatelessWidget {
  SimpleListviewPage ({super.key});

  var strList = ["1번째 항목","2번째 항목","3번째 항목","4번째 항목","5번째 항목","6번째 항목",
    "7번째 항목","8번째 항목","9번째 항목","10번째 항목","11번째 항목","12번째 항목",
    "13번째 항목","14번째 항목","15번째 항목","16번째 항목","17번째 항목","18번째 항목"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: strList.length,
        itemBuilder: (context,index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => SimpleListViewDetail(id: 12345, password: "dfsdf"))
              );
            },
            child: Card(
              //margin: EdgeInsets.symmetric(vertical:2),
              //padding : EdgeInsets.symmetric(vertical:5),
              //color: Colors.pinkAccent,
              child: Center(
                child: Text(strList[index],
                  style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                ),
              )

            ),
          );

        }
    );


  }
}
