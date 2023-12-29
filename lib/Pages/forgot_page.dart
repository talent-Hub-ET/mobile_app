import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.only(top: 106,left: 16,right: 16,bottom: 16),

          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Forgot Password?',
                  style:TextStyle(
                    color: Color(0xff17BF9E),
                    fontSize: 32,
                    fontFamily: 'inter',
                    fontWeight: FontWeight.bold,
                  )
              ),
              SizedBox(height: 16,),
              const Text("Recover you password if you have forgot the password!",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'inter',
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
                      child: const Text('Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'inter',
                          fontWeight: FontWeight.bold,
                        ),)),
                ],
              ),

            ],
          )
          ,
        ),
      ),

    );
  }
}
