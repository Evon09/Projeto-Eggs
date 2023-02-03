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
      backgroundColor: Color.fromARGB(255,245,245,245),
      body: Center(
           

            
            child: Container( 
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
           
              mainAxisAlignment: MainAxisAlignment.center,
              //Hello Again!
              
              children: [

                Expanded(
                  child: 
                  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Solução para",
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          "Contagem de ovos",
                          style: TextStyle(fontSize: 40),
                        ),
                      ],
                    ),
                    
                    Container(
                      
                      height: 300,
                      width: 300,
                      color: Colors.grey,
                      child: Center(child: Text("Logo ou algo do tipo"),),
                    )
                    
                  

                  ],
                ),
                 
                ),





                Expanded(
                  child: 
                  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Container(
                    height: 500,
                    width: 400,
                    color: Colors.grey,
                    child: 
                    Center(
                      child: Text("Ilustraçao generica"),
                       ),
                   )

                  ],
                ),
                 
                ),
                
               

                Expanded(
                  child: 
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                   
                    Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                      controller: _emailcontroller,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
	                        hintStyle: TextStyle(color: Colors.grey),  
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 150, 136, 214)),
                              borderRadius: BorderRadius.circular(12)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 141, 136, 214)),
                              borderRadius: BorderRadius.circular(12)),
                          labelText: "Email",
                          fillColor: Color.fromARGB(255,236,239,241),
                          filled: true)),
                ),
                SizedBox(height: 10),
                
                //password text
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                      obscureText: _isHidden,
                      controller: _passwordcontroller,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.key_sharp),
	                        hintStyle: TextStyle(color: Colors.grey),  
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 150, 136, 214)),
                              borderRadius: BorderRadius.circular(12)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color.fromARGB(255, 141, 136, 214)),
                              borderRadius: BorderRadius.circular(12)),
                          labelText: "Password",
                          suffix: InkWell(
                             onTap: _togglePasswordView,
                             child: Icon( Icons.visibility),
                ),
                          fillColor: Color.fromARGB(255,236,239,241),
                          filled: true)
                          
                          ),
              
                ),
                SizedBox(
                  height: 20,
                ),

              


                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                                
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),

                //submit button
                SizedBox(height: 40),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: GestureDetector(
                    onTap: signIn,
                    child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                              boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(113, 134, 103, 218),
                                blurRadius: 15.0,
                                spreadRadius: 5.0,
                                offset: Offset(0.0, 0.0),
                              ),
                            ],
                            color: Color.fromARGB(255, 128, 98, 212),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Text(
                          "Sign In",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ))),
                  ),
                ),
         

                  ],
                ),
                ),
              ],
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


