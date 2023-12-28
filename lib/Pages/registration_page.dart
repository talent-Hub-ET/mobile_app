import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.only(top: 106,left: 16,right: 16,bottom: 16),
        
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Create Account',
                  style:TextStyle(
                    color: Color(0xff17BF9E),
                    fontSize: 32,
                    fontFamily: 'inter',
                    fontWeight: FontWeight.bold,
                  )
              ),
              SizedBox(height: 16,),
              RichText(
                text: const TextSpan(
                  text: 'Create an ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontFamily: 'inter',
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'account', style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff8185FC))),
                    TextSpan(text: ' to access all the features of '),
                    TextSpan(text: 'MerejaTech',style: TextStyle(fontWeight: FontWeight.bold,)),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              const Text("Email",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'inter',
                ),
              ),
        
              SizedBox(height: 5,),
              Form(
                child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        decoration:  const InputDecoration(
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xff8185FC))),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7.35))
                        ),
                            prefixIcon: Icon(
                              Icons.alternate_email,
                              color: Color(0xff17BF9E),
                              size: 19,),
                            label: Text('Ex: abc@example.com',
                              style: TextStyle(
                                  color: Color(0xffC8C8C8),
                                  fontSize: 15,
                                  fontFamily: 'inter',
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.italic
                              ),
                            )),),
        
        
                      SizedBox(height: 30,),
                      const Text("Your Name",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'inter',
                        ),
                      ),
                      SizedBox(height: 5,),
                      TextFormField(
                        decoration:  const InputDecoration(
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xff8185FC))),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7.35))),
                            prefixIcon: Icon(
                              Icons.co_present,
                              color: Color(0xff17BF9E),
                              size: 19,),
                            label: Text('Ex. Nati',
                              style: TextStyle(
                                  color: Color(0xffC8C8C8),
                                  fontSize: 15,
                                  fontFamily: 'inter',
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.italic
                              ),
                            )),),
        
        
                      SizedBox(height: 30,),
                      const Text("Your Password",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'inter',
                        ),
                      ),
                      SizedBox(height: 5,),
                      TextFormField(
                        decoration:  const InputDecoration(
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Color(0xff8185FC))),
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7.35))
                        ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xff17BF9E),
                              size: 19,),
                            label: Text('.......',
                              style: TextStyle(
                                color: Color(0xffC8C8C8),
                                fontSize: 15,
                                fontFamily: 'inter',
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic
                              ),
                            )),),
        
        
                    ]
                ),
              ),
        
              SizedBox(height: 30,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  OutlinedButton(onPressed: (){},
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color:Color(0xff17BF9E)),
                          backgroundColor: Color(0xff17BF9E),
                          fixedSize: Size(330, 55) ,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(7.35)))),
                      child: const Text('Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'inter',
                          fontWeight: FontWeight.bold,
                        ),)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('already have an account?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'inter',
                    ),),
                  TextButton(onPressed: (){},
                      child: const Text('Login',
                        style: TextStyle(
                          color: Color(0xff8185FC),
                          fontSize: 17,
                          fontFamily: 'inter',
                        ),))
                ],
              )
            ],
          )
          ,
        ),
      ),

    );
  }
}
