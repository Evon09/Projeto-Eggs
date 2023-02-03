import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class forgotpasswordPage extends StatefulWidget {
  const forgotpasswordPage({super.key});

  @override
  State<forgotpasswordPage> createState() => _forgotpasswordPageState();
}

class _forgotpasswordPageState extends State<forgotpasswordPage> {
  final _emailcontroller = TextEditingController();

  @override
  void dispose() {
    _emailcontroller.dispose();
    super.dispose();
  }

  Future PasswordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailcontroller.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text("Password reset link has been sent to your email"),
            );
          });
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,245,245,245),
      body: 
      
      
      
      
      
      
      Row(
        mainAxisAlignment: MainAxisAlignment.center, 
        
        children: [
           Expanded(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
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
                 SizedBox(height: 30),
        
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: GestureDetector(
                    onTap: PasswordReset,
                    child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                              boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(113,53, 83, 127),
                                blurRadius: 15.0,
                                spreadRadius: 5.0,
                                offset: Offset(0.0, 0.0),
                              ),
                            ],
                            color: Color.fromARGB(255,53, 83, 127),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: Text(
                          "Continue",
                          style: TextStyle(
                              color :Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ))),
                  ),
                ),
            ],)
          ),
               
          Expanded(
            child:
            Container(

              color: Color.fromARGB(255,53, 83, 127),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              
              children: [
                      Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Forgot password?",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold, color: Colors.white)
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Enter you email adress associated with your account and we ill send you a link to reset your password",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)
                ),
              ),

              ],
            ),
            )
            ),
   
        /*  
        
        
        
         */
       
        
      ]),
      
    );
    
  }
}
