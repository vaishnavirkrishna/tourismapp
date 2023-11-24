import 'package:flutter/material.dart';
import 'package:tourismapp/view/details.dart';
import 'package:tourismapp/view/utils/constants.dart';

class MyWidget extends StatefulWidget {
  MyWidget({super.key, required this.title});
  String? title;

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(centerTitle: true, title: Text(' WELCOME ${widget.title!}')),
      body: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          height: 20,
        ),
        itemCount: img.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MyDetail(title: titles[index], imgUrl: img[index]),
                  )),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      titles[index],
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    height: 200,
                    width: double.infinity,
                    child: Image(
                      image: NetworkImage(img[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
