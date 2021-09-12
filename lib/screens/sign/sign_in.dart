// import 'package:chat_app/screens/home/home.dart';
// import 'package:chat_app/screens/sign/components/sign_in_content.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        height: contentHeight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            // SizedBox(height: 200),
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
                            SizedBox(height: 35),
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
                            SizedBox(height: 45),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    print("user clickes to sign in ");
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
                                    "Sign in",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 35),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushNamed("/sign-up");
                                    },
                                    child: Text(
                                      "Sign up",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                          color: Colors.black87),
                                    ),
                                  ),
                                  Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black45),
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
                "assets/images/log_in.png",
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
