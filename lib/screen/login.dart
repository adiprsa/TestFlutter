import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import '../mixins/Validation.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with Validation {

  final formKey = GlobalKey<FormState>(); //MEMBUAT GLOBAL KEY UNTUK VALIDASI 
  
  // DEFINE VARIABLE
  String username = '';
  String password = '';

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0), //SET MARGIN DARI CONTAINER 
      child: Form( 
        key: formKey, //MENGGUNAKAN GLOBAL KEY
        child: Column( 
          //CHILDREN DARI COLUMN BERISI 3 BUAH OBJECT YANG AKAN DI-RENDER, YAKNI
          // TextInput UNTUK USERNAME, PASSWORD DAN TOMBOL DAFTAR
          children: [
            usernameField(),
            passwordField(),
            loginButton(),
          ],
        )
      ),
    );
  }

  Widget usernameField() {
    //MEMBUAT TEXT INPUT 
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Username' //DENGAN LABEL Nama Lengkap
      ),
      validator: validateUsername, //validateUsername ADALAH NAMA FUNGSI PADA FILE validation.dart
      onSaved: (String value) { //KETIKA LOLOS VALIDASI
        username = value; //MAKA VARIABLE name AKAN DIISI DENGAN TEXT YANG TELAH DI-INPUT
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true, //KETIKA obsecureText bernilai TRUE
      //MAKA SAMA DENGAN TYPE PASSWORD PADA HTML
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter Password',
      ),
      validator: validatePassword, ////BERLAKU SAMA DENGAN HELPERS SEBELUMNYA
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget loginButton() {
    //MEMBUAT TOMBOL
    return RaisedButton(
      color: Colors.blueAccent, //MENGATUR WARNA TOMBOL
      onPressed: () {
        if (formKey.currentState.validate()) { //JIKA TRUE
          formKey.currentState.save(); //MAKA FUNGSI SAVE() DIJALANKAN
          
          //NAMUN UNTUK SEMENTARA KITA PRINT KE CONSOLE SAJA
          //KARENA BELUM MEMBAHAS TENTANG HTTP REQUEST
          print('Username: $username');
          print('Password: $password');
        }
      },
      child: Text('Login'), //TEXT YANG AKAN DITAMPILKAN PADA TOMBOL
    );
  }
}