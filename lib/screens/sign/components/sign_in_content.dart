import 'package:flutter/material.dart';

class SignInContent extends StatelessWidget {
  const SignInContent({
    Key? key,
    required this.contentHeight,
  }) : super(key: key);

  final double contentHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: this.contentHeight,
        // decoration: BoxDecoration(
        //     color: Colors.white,
        //     border: Border.all(width: 1.0, color: Colors.black54),
        //     borderRadius: BorderRadius.only(
        //         topLeft: Radius.circular(35.0),
        //         topRight: Radius.circular(35.0))),
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        labelText: 'Your Email',
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15.0),
                        hintText: "Email",
                        hintStyle: TextStyle(
                            color: Color(0xffB9B8C4),
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    style: TextStyle(fontSize: 25)),
                SizedBox(height: 45),
                TextFormField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outlined),
                      suffixIcon: IconButton(
                          onPressed: () {
                            print("click to see password");
                          },
                          icon: Icon(Icons.visibility_outlined)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      labelText: 'Your Password',
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      hintText: "Password",
                    ),
                    obscureText: true,
                    style: TextStyle(
                        color: Color(0xffB9B8C4),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        print("user clickes to sign in ");
                      },
                      child: Row(children: <Widget>[
                        Text(
                          "Sign in",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.black),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                          size: 24,
                        )
                      ]),
                    ),
                  ],
                ),
                SizedBox(height: 45),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("/sign-up");
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              decoration: TextDecoration.underline,
                              color: Colors.black87),
                        ),
                      ),
                      Text(
                        "Forgot Password",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            decoration: TextDecoration.underline,
                            color: Colors.black45),
                      ),
                    ])
              ],
            )));
  }
}
