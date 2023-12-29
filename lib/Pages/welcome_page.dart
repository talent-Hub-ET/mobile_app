import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(16),

        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Welcome to",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: 'inter',
              ),),
            const Text('MerejaTech',
                style:TextStyle(
                  color: Color(0xff17BF9E),
                  fontSize: 40,
                  fontFamily: 'inter',
                  fontWeight: FontWeight.bold,
                )
            ),
            SizedBox(height: 16,),
            const Text('A place where you can find your jobs with your chosen field.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontFamily: 'inter',
              ),
            ),
            SizedBox(height: 40,),
            const Text("let's get started...",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontFamily: 'inter',
              ),
            ),
            SizedBox(height: 80,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                OutlinedButton(onPressed: (){},
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(330, 55) ,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(7.35)))),
                    child: const Text('Create Account',
                      style: TextStyle(
                      color: Colors.black,
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

    );
  }
}
