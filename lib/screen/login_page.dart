import 'package:flutter/material.dart';
import 'package:voorood/componnets/form.dart';
import 'package:voorood/componnets/inputfield.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginSatate();
}

class LoginSatate extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  final formkey = GlobalKey<FormState>();
  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
    animationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 3000));
  }

  String emailvalue;
  String passwordvalue;
  emailonsaved(String value) {
    emailvalue = value;
  }

  passwordonsaved(String value) {
    passwordvalue = value;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(colors: <Color>[
          const Color(0xff2c5464),
          const Color(0xff0f2027),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: new Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Opacity(
              opacity: .1,
              child: new Container(
                width: size.width,
                height: size.height,
                decoration: new BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/index.png"),
                        repeat: ImageRepeat.repeat)),
              ),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FormContainer(
                  formkey: formkey,
                  // key: formkey,
                ),
                FlatButton(
                    onPressed: () {},
                    child: new Text(
                      "آیا هیج اکانتی ندارید؟ عضویت",
                      style: new TextStyle(color: Colors.white, fontSize: 14),
                    ))
              ],
            ),
            GestureDetector(
              onTap: () {
                if (formkey.currentState.validate()) {
                  formkey.currentState.save();
                  print(emailvalue);
                  print(passwordvalue);
                }
              },
              child: new Container(
                margin: EdgeInsets.only(bottom: 30),
                width: 230,
                height: 60,
                alignment: Alignment.center,
                child: new Text(
                  "ورود",
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      letterSpacing: .3),
                ),
                decoration: new BoxDecoration(
                    color: Color(0xff075e54),
                    borderRadius: new BorderRadius.circular(30)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
