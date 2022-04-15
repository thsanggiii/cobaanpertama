import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:io';

class PreviewPage extends StatefulWidget {
  String picture;
  Color colors;
  String caption;
  DateTime datePost;

  PreviewPage({
    Key? key,
    required this.picture,
    required this.colors,
    required this.caption,
    required this.datePost,
  }) : super(key: key);

  @override
  State<PreviewPage> createState() => _PreviewPageState();
}

class _PreviewPageState extends State<PreviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.colors,
        title: Text('Preview Page'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.file(File(widget.picture)),
          ),
          Padding(padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text( 'Published: ${DateFormat('dd-MM-yyyy').format(widget.datePost)}',
                  style: const TextStyle(color: Colors.grey, fontSize: 15),),
                  Row(
                    children: [
                      Text(  'Color: ',
                      style: TextStyle(color: Colors.grey, fontSize: 15),),
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: CircleAvatar(
                          backgroundColor: widget.colors
                        ),
                      )
                    ],
                  )
            ],
          ),
          ),
          Padding(padding: EdgeInsets.all(16),
          child : Text(
            widget.caption, //mengambil data dari widget
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
          )
          )
        ],
      ),
    );
  }
}