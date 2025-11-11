import 'package:flutter/material.dart';
import 'package:flutter_project2/detailpage.dart';

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Validation"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(label: Text('Nama')),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()) {
                    String name = nameController.text;
                    String umur = "25";

                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Detailpage(nama: name, umur: umur)));

                    // ScaffoldMessenger.of(
                    //   context
                    //   ).showSnackBar(SnackBar(content: Text(name)));
                  }
              }, 
              child: const Text('Submit'))
            ],
          )
          ),
        )
      );
  }
}