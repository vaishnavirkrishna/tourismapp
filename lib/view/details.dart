import 'package:flutter/material.dart';

class MyDetail extends StatelessWidget {
  MyDetail({super.key, this.title, this.imgUrl});
  String? imgUrl;
  String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("DETAIL PAGE"),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Text(
              title!,
              style: TextStyle(fontSize: 20),
            ),
            Container(
              child: Image.network(imgUrl!),
              height: 200,
              width: double.infinity,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      )),
    );
  }
}
