import 'package:flutter/material.dart';

class Customformfield extends StatelessWidget {
  String labeltxt='';
  bool txtSecure;
  TextInputType type;
  String? Function(String?) validator;
  TextEditingController Controller;
  Customformfield({
    this.txtSecure=false,
    required this.labeltxt,
    this.type=TextInputType.text,
    required this.validator,
    required this.Controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        style: TextStyle(
          fontSize: 25,
        ),
        obscureText:txtSecure,
        validator: validator,
        controller: Controller,
        keyboardType: type,
        decoration: InputDecoration(
          errorStyle: TextStyle(fontSize:25),
          fillColor: Colors.white,
          filled: true,
          labelText:labeltxt ,
          labelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 25,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
              BorderSide(color: Colors.blue.shade200, width: 3)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
              BorderSide(color: Colors.blue.shade200, width: 3)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
              BorderSide(color: Colors.red.shade300, width:2)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
              BorderSide(color: Colors.red.shade300, width:2)),
        ),),
    );
  }
}
