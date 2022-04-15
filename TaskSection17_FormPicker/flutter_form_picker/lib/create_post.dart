import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_picker/preview_page.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({ Key? key }) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  TextEditingController caption=TextEditingController();
  TextEditingController dateInput=TextEditingController();
  Color _currentColor=Colors.blue;
  DateTime _dueDate=DateTime.now();
  DateTime _currentDate=DateTime.now();
  bool _date = false;
  bool date = true;
  var _nameFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _currentColor,
        title: const Text('Create Post'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ...cover(), 
              SizedBox(
                height : 10,
              ),
              Text('Publis Art'),
              SizedBox(
                height : 5,
              ),
              TextField(
                controller: dateInput,
                readOnly: true,
                onTap: () async {
                  final selectDate= await showDatePicker( context: context,
                      initialDate: _currentDate,
                      firstDate: DateTime(1950),
                      lastDate: DateTime(_currentDate.year + 5)
                  );
                  String formatedDate =
                      DateFormat('dd-MM-yyyy').format(_dueDate);
                  setState(() {
                    if (selectDate != null) {
                      _dueDate = selectDate;
                    }
                    _date = !_date;
                    _date = date;
                    dateInput.text = formatedDate;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'dd-MM-yyyy',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height : 10,
              ),
              Text('Colour Theme'),
              SizedBox(
                height : 5,
              ),
              TextField(
                readOnly: true,
                onTap: () async {
                  await showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                        'Pick your color',
                      ),
                      content: BlockPicker(
                          pickerColor: _currentColor,
                          onColorChanged: (color) {
                            setState(() {
                              _currentColor = color;
                            });
                          }),
                    ),
                  );
                },
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.circle_rounded,
                  color: _currentColor,),
                  border: OutlineInputBorder(),
               ),
              ),
              SizedBox(
                height : 10,
              ),
              Text('Caption'),
              SizedBox(
                height : 5,
              ),
              TextField(
                controller: caption,
                onChanged: (textCaption) => caption.text = textCaption,
                maxLines: 8,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
               ),
              ),
              SizedBox(
                height : 25,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: _currentColor),
                onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context) => PreviewPage(picture: _nameFile, colors: _currentColor, caption: caption.text, datePost: _dueDate)));
              }, child: Text('Simpan'))
            ],
          ),
        )),
      
    );

  }
  List <Widget> cover(){
    return [
      Text('Cover'),
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: _currentColor),
          onPressed: () async {
          FilePickerResult? result = await FilePicker.platform.pickFiles();
          if(result != null){
            final file= result.files.first;
            setState(() {
              _nameFile= file.path;
            });
          }
        }, child: Text('Pilih File')),
      ),
    ];
  }

}