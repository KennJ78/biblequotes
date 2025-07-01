import 'package:flutter/material.dart';

class Addmusic extends StatefulWidget {
  const Addmusic({super.key});

  @override
  State<Addmusic> createState() => _AddmusicState();
}

class _AddmusicState extends State<Addmusic> {

  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _Artist = '';
  double _filesize = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Youtube Mp3 Downloader',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Add Music',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 13),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Title',
                        hintText: 'Ex. Kupong',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                      ),
                      validator: (value){
                        if (value == null || value.isEmpty){
                          return 'Please add a Title';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 13),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Artist',
                        hintText: 'Ex. Gian',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                      ),

                      validator: (value){
                        if (value == null || value.isEmpty){
                          return 'Please add a Artist';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 13),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'File Size',
                        hintText: 'Ex. 10',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                      ),

                      validator: (value){
                        if (value == null || value.isEmpty){
                          return 'Please add a file Size';
                        }
                        return null;
                      },
                    ),

                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()){
                  print ('The Form is Validated');

                }
              }, // Does nothing
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minimumSize: const Size.fromHeight(50),
              ),
              child: const Text(
                'Add ',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
