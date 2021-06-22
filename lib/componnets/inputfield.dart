import 'package:flutter/material.dart';

class Inputfield extends StatelessWidget {
  final String hint;
  final bool obscur;
  final IconData icon;
  final validator;
  Inputfield({this.hint, this.obscur, this.icon, this.validator});
g
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: new TextFormField(
        onSaved: (String value) {
          print(value);
        },
        validator: validator,
        obscureText: obscur,
        style: new TextStyle(color: Colors.white),
        decoration: new InputDecoration(
            icon: Icon(
              icon,
              color: Colors.white,
            ),
            focusedBorder: new UnderlineInputBorder(
                borderSide: new BorderSide(color: Colors.green)),
            enabledBorder: new UnderlineInputBorder(
                borderSide: new BorderSide(color: Colors.white)),
            errorStyle: new TextStyle(color: Colors.amber),
            errorBorder: new UnderlineInputBorder(
                borderSide: new BorderSide(color: Colors.amber)),
            focusedErrorBorder: new UnderlineInputBorder(
                borderSide: new BorderSide(color: Colors.amber)),
            hintText: hint,
            hintStyle: new TextStyle(color: Colors.white, fontSize: 15),
            contentPadding: EdgeInsets.only(
              right: 0,
              left: 5,
              bottom: 20,
              top: 15,
            )),
      ),
    );
  }
}
