import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:testeagenda/src/constants/image_strings.dart';

class Document {
  final String? id;
  String? title;
  String? text;

  Document({this.id, this.title, this.text});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'text': text,
    };
  }

  factory Document.fromMap(String id, Map<String, dynamic> map) {
    return Document(
      id: id,
      title: map['title'] as String?,
      text: map['text'] as String?,
    );
  }
}

class Gargalos1026 extends StatefulWidget {
  @override
  _TextaoState createState() => _TextaoState();

}

class _TextaoState extends State<Gargalos1026> {
  List<Document> _notes = [];
  List<bool> _isSelectedList = [];
  final TextEditingController _titleFieldController = TextEditingController();
  final TextEditingController _textFieldController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadNotes();
  }

  Future<void> _loadNotes() async {
    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection('1026gargalo').get();
      _notes = querySnapshot.docs.map((doc) => Document.fromMap(doc.id, doc.data() as Map<String, dynamic>)).toList();
      _isSelectedList = List.filled(_notes.length, false);
    } catch (error) {
      print('Error loading notes: $error');
    }
    setState(() {});
  }

  Future<void> createDocumentWithTextField(String documentTitle) async {
    if (_textFieldController.text.isNotEmpty) {
      try {
        await FirebaseFirestore.instance
            .collection('1026gargalo')
            .add(Document(title: documentTitle, text: _textFieldController.text).toMap());
        print('Document created with text field and title.');
        _loadNotes();
      } catch (error, stackTrace) {
        print('Error creating document with text field and title: $error');
        print('Stack trace: $stackTrace');
      }
    } else {
      print('Document text cannot be empty.');
    }
  }

  Future<void> updateDocumentWithTextField(String documentId, String newTitle, String newText) async {
    if (documentId.isNotEmpty) {
      try {
        await FirebaseFirestore.instance
            .collection('1026gargalo')
            .doc(documentId)
            .update({
              'title': newTitle,
              'text': newText,
            });
        print('Document updated with new title and text.');
        _loadNotes(); // Reload notes after updating
      } catch (error, stackTrace) {
        print('Error updating document: $error');
        print('Stack trace: $stackTrace');
      }
    } else {
      print('Document ID cannot be empty.');
    }
  }

  Future<void> _deleteNote(String documentId) async {
    try {
      await FirebaseFirestore.instance.collection('1026gargalo').doc(documentId).delete();
      print('Arquivo deletado com sucesso');
      _loadNotes(); // Reload notes after deleting
    } catch (error) {
      print('Error deleting document: $error');
    }
  }

  Widget buildNoteTile(Document note, int index) {
  return Container(
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 143, 141, 141).withOpacity(0.2),
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(10.0),
    ),
    margin: EdgeInsets.all(8.0),
    padding: EdgeInsets.all(8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
      child: ListTile(
      title: Text(
        note.title ?? '',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        note.text ?? '',
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(Icons.delete, color: Colors.black, size: 35,),
            onPressed: () {
              _deleteNote(note.id!);
            },
          ),
          IconButton(
            icon: Icon(Icons.edit, color: Colors.black, size: 35,),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Modificar nota'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          controller: TextEditingController(text: note.title),
                          decoration: InputDecoration(labelText: 'Título'),
                          onChanged: (value) {
                            setState(() {
                              note.title = value;
                            });
                          },
                          maxLines: null,
                        ),
                        TextField(
                          controller: TextEditingController(text: note.text),
                          decoration: InputDecoration(labelText: 'Texto'),
                          onChanged: (value) {
                            setState(() {
                              note.text = value;
                            });
                          },
                          maxLines: null,
                        ),
                      ],
                    ),
                    actions: [
                      ElevatedButton(
                        child: Text('Salvar'),
                        onPressed: () {
                          updateDocumentWithTextField(note.id!, note.title!, note.text!);
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    ),
  )));
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              backgroundColor:  Color(0xFF1B1D1E).withOpacity(0.6),
              toolbarHeight: 35,
              centerTitle: true,
              title: const Text(
                '1026 Gargalos',
                style: TextStyle(fontSize: 30.0, color: Color.fromARGB(255, 197, 192, 192)),
              ),
            ),
          ),
        ),
        preferredSize: const Size(
          double.infinity,
          56.0,
        ),
      ),
      body: Center( child: Container(decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(tWallpaper), fit: BoxFit.cover),
            ), child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _notes.length,
              itemBuilder: (BuildContext context, int index) {
                return buildNoteTile(_notes[index], index);
              },
            ),
          ),
          Container( decoration: BoxDecoration(
      color: Colors.blueGrey.shade500.withOpacity(0.2),
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(10.0),
    ), child: TextField(
      style: TextStyle(color: Colors.white70),
            controller: _titleFieldController,
            decoration: InputDecoration(
              labelText: 'Título do arquivo',
              border: OutlineInputBorder(),
            ),
            maxLines: null,
          ),),
          const SizedBox(height: 16.0),
          Container( decoration: BoxDecoration(
      color: Colors.blueGrey.shade500.withOpacity(0.2),
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(10.0),
    ), child: TextField(
      style: TextStyle(color: Colors.white),
            controller: _textFieldController,
            decoration: InputDecoration(
              labelText: 'Informação do arquivo',
              border: OutlineInputBorder(),
            ),
            maxLines: null,
          ),),
          const SizedBox(height: 16.0),
          ElevatedButton(
            child: Text('Crie um arquivo de melhorias'),
            onPressed: () {
              String documentTitle = _titleFieldController.text;
              createDocumentWithTextField(documentTitle);
            },
          ),
          const SizedBox(height: 16.0),
        ],
      ),
    ),),);
  }
}
    