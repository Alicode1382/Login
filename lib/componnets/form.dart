import 'package:flutter/material.dart';
import 'package:voorood/componnets/inputfield.dart';
import 'package:voorood/screen/login_page.dart';
import 'package:validators/validators.dart';

class FormContainer extends StatelessWidget {
  final formkey;
  FormContainer({@required this.formkey});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: [
          new Form(
              key: formkey,
              child: new Column(
                children: [
                  Inputfield(
                    obscur: false,
                    hint: "ایمیل",
                    icon: Icons.person,
                    validator: (String value) {
                      if (!isEmail(value)) {
                        return "باید با فرمت ایمیل وارد شود";
                      }
                    },
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Inputfield(
                    obscur: true,
                    hint: "پسورد",
                    icon: Icons.lock,
                    validator: (String value) {
                      if (value.length < 4) {
                        return "باید بیشتر از 4 باشد";
                      }
                    },
                  )
                ],
              ))
        ],
      ),
    );
  }
}
