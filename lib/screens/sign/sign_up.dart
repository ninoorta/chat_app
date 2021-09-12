import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isPasswordVisible = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var appBarHeight = AppBar().preferredSize.height;
    // var imageHeight = screenHeight - appBarHeight;
    var contentHeight = screenHeight - appBarHeight;

    return SafeArea(
      child: Container(
        height: contentHeight,
        child: Stack(children: <Widget>[
          Scaffold(
            // resizeToAvoidBottomInset: false,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                height: contentHeight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                        height: contentHeight,
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            // SizedBox(height: 235),
                            TextFormField(
                              maxLines: 1,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.face_outlined),
                                  labelStyle: TextStyle(fontSize: 22),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  labelText: 'Username',
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 15.0),
                                  hintText: "Your Username",
                                  hintStyle: TextStyle(
                                      color:
                                          Color(0xffB9B8C4).withOpacity(0.75),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              maxLines: 1,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email_outlined),
                                  labelStyle: TextStyle(fontSize: 22),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  labelText: 'Email',
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 15.0),
                                  hintText: "Your Email",
                                  hintStyle: TextStyle(
                                      color:
                                          Color(0xffB9B8C4).withOpacity(0.75),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              maxLines: 1,
                              decoration: InputDecoration(
                                  labelStyle: TextStyle(fontSize: 22),
                                  prefixIcon: Icon(Icons.lock_outlined),
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          this.isPasswordVisible =
                                              !this.isPasswordVisible;
                                        });
                                      },
                                      icon: Icon(this.isPasswordVisible
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  labelText: 'Password',
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 15.0),
                                  hintText: "Your Password",
                                  hintStyle: TextStyle(
                                      color:
                                          Color(0xffB9B8C4).withOpacity(0.75),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              obscureText: !this.isPasswordVisible,
                            ),
                            SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    print("user clickes to sign up ");
                                    // Navigator.of(context)
                                    //     .popAndPushNamed("/sign-in");
                                    // Navigator.of(context).pop();
                                  },
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              side: BorderSide.none)),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.all(15)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0xFF4179EE))),
                                  child: Text(
                                    "Sign up",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Already have account?",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black45),
                                  ),
                                  SizedBox(width: 10),
                                  GestureDetector(
                                    onTap: () {
                                      // Navigator.of(context)
                                      //     .pushNamed("/sign-in");

                                      Navigator.of(context).pop();
                                    },
                                    child: Text("Log in",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.blue,
                                            decoration:
                                                TextDecoration.underline)),
                                  ),
                                ]),
                            SizedBox(height: 45),
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              // top: -appBarHeight + 5,
              top: -25,
              left: -15,
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/sign_up.png",
                fit: BoxFit.contain,
              )),
          Positioned(
              top: 0,
              left: -15,
              child: MaterialButton(
                padding: EdgeInsets.zero,
                child: Icon(Icons.arrow_back_outlined,
                    color: Colors.white, size: 26),
                onPressed: () => Navigator.pop(context),
              ))
        ]),
      ),
    );
  }
}
