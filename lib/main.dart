import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pertemuan 2",
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyApp"),
          backgroundColor: Colors.red[800],
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "BERITA TERBARU",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "PERTANDINGAN HARI INI",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple.shade300),
              ),
              child: Column(
                children: [
                  Image(
                    image: NetworkImage(
                        'data:image/jpeg;base64,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'),
                    width: 500,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "Cristian Ronaldo ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Container(
                      width: 500,
                      height: 50,
                      color: Colors.purple[300],
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                            width: 10,
                          ),
                          Text(
                            "Transfer",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      )),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade700)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://ichef.bbci.co.uk/news/640/cpsprodpb/13BBF/production/_118113808_bac4467e-78b3-4f98-9caf-d5723d7c27a6.jpg',
                          width: 150,
                          height: 100,
                        ),
                        Flexible(
                          child: Text(
                            'Renaldo mengiring bola ,dihadang oleh Leonel Messi bung !!!,ahai dari bung Giorgio azek',
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade700)),
                    width: 500,
                    height: 50,
                    child: Row(
                      children: [
                        Text('Real Madrid Maret 13,2021'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade700)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://ichef.bbci.co.uk/news/640/cpsprodpb/13BBF/production/_118113808_bac4467e-78b3-4f98-9caf-d5723d7c27a6.jpg',
                          width: 150,
                          height: 100,
                        ),
                        Flexible(
                          child: Text(
                            'Renaldo mengiring bola ,dihadang oleh Leonel Messi bung !!!,ahai dari bung Giorgio azek',
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade700)),
                    width: 500,
                    height: 50,
                    child: Row(
                      children: [
                        Text('Real Madrid Maret 13,2021'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade700)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://ichef.bbci.co.uk/news/640/cpsprodpb/13BBF/production/_118113808_bac4467e-78b3-4f98-9caf-d5723d7c27a6.jpg',
                          width: 150,
                          height: 100,
                        ),
                        Flexible(
                          child: Text(
                            'Renaldo mengiring bola ,dihadang oleh Leonel Messi bung !!!,ahai dari bung Giorgio azek',
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade700)),
                    width: 500,
                    height: 50,
                    child: Row(
                      children: [
                        Text('Real Madrid Maret 13,2021'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                    height: 10,
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
