import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormPageFonts extends StatefulWidget {
  const FormPageFonts({super.key});

  @override
  State<FormPageFonts> createState() => _FormPageFontsState();
}

class _FormPageFontsState extends State<FormPageFonts> {

  TextEditingController textoController = TextEditingController();
  String texto = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [],
        title: const Text('Fontes'), 
        centerTitle: true,
        ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Form(
              
              child: TextFormField(
                controller: textoController,
                onChanged: (value){
                  texto = value;
                  setState(() {
                    
                  });
                  
                },
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  hintText: 'Insira seu Texto'
                ),
              )
              ),
          ),
          Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 75,
                    child: Text("Acme: ", style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    width: 250,
                    height: 50,
                    child: Center(child: Text(texto, style:  GoogleFonts.acme(fontSize: 20)),)
                    ),
                ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 75,
                    child: Text("aBeeZee: ", style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    width: 250,
                    height: 50,
                    child: Center(child: Text(texto, style:  GoogleFonts.aBeeZee(fontSize: 20)),)
                    ),
                ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 75,
                    child: Text("Abel: ", style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold,
                    ),),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    width: 250  ,
                    height: 50,
                    child: Center(child: Text(texto, style:  GoogleFonts.abel(fontSize: 20)),)
                    ),
                ],
              ),
            ],
          )
        ],
      ),

    );
  }
}