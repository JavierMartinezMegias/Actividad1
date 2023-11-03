import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier{
  String cont = "";
  String user ="";

    bool compruebaLogin (String usuario, String password){

    user = usuario;
    cont = password;
    return user != "" && cont != "";

  }

}