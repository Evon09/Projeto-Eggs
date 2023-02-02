import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'forgot_pw_page.dart';



class loginpage extends StatefulWidget {
  final VoidCallback showSignupPage;
  const loginpage({Key? key, required this.showSignupPage}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  bool _isHidden = true;


   Future<void> signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailcontroller.text.trim(),
          password: _passwordcontroller.text.trim());
    } catch (e) {
      print(e);
    }
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd63384),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              //Hello Again!
              
              children: [

                Text(
                "Hi there,",
               
                style: TextStyle(fontSize: 40, fontFamily: 'Open Sans', fontWeight: FontWeight.bold, color:Color(0xffffffff) ),
                ),
                Text(
                "I'm FarmDash",
               
                style: TextStyle(fontSize: 40, fontFamily: 'Open Sans', fontWeight: FontWeight.bold, color:Color(0xffffffff) ),
                ),
                SizedBox(height: 0),
                Text(
                  "",
                  style: TextStyle(
                    fontSize: 18,
                    //fontFamily: 'Raleway',
                  ),
                ),
                Text(
                "Your Dashboard to sítio urbano",
               
                style: TextStyle(fontSize: 20, fontFamily: 'Open Sans', color:Color(0xffffffff) ),
                ),
                //SizedBox(height: 0),
                SizedBox(height: 30),


                
                //email text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                      controller: _emailcontroller,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
	                        hintStyle: TextStyle(color: Colors.grey),  
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffd688b0)),
                              borderRadius: BorderRadius.circular(12)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffd688b0)),
                              borderRadius: BorderRadius.circular(12)),
                          labelText: "Email",
                          fillColor: Colors.white,
                          filled: true)),
                ),
                SizedBox(height: 10),
                
                //password text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                      obscureText: _isHidden,
                      controller: _passwordcontroller,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.key_sharp),
	                        hintStyle: TextStyle(color: Colors.grey),  
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffd688b0)),
                              borderRadius: BorderRadius.circular(12)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffd688b0)),
                              borderRadius: BorderRadius.circular(12)),
                          labelText: "Password",
                          suffix: InkWell(
                             onTap: _togglePasswordView,
                             child: Icon( Icons.visibility),
                ),
                          fillColor: Colors.white,
                          filled: true)
                          
                          ),
              
                ),
                SizedBox(
                  height: 20,
                ),

              


                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return forgotpasswordPage();
                              },
                            ),
                          );
                        },
                        child: Text("Forgot password?",
                            style: TextStyle(
                                
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),

                //submit button
                SizedBox(height: 40),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: GestureDetector(
                    onTap: signIn,
                    child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Text(
                          "Sign In",
                          style: TextStyle(
                              color: Color(0xffd63384),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ))),
                  ),
                ),
                
                SizedBox(height: 20),
             
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}


