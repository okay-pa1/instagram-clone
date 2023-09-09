import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SwitchAccount extends StatefulWidget {
  const SwitchAccount({super.key});

  @override
  State<SwitchAccount> createState() => _SwitchAccountState();
}

class _SwitchAccountState extends State<SwitchAccount> {
  bool passwordvisible=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const  BoxDecoration(
        color: Colors.black,
      ),
      child: Scaffold(
        backgroundColor: Colors.black,
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text('Instagram',style: GoogleFonts.getFont('Lobster',color: Colors.white,fontSize: 40,letterSpacing: 3),),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal:30,vertical:8 ),
              child:  TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 54, 53, 53),
                  contentPadding: EdgeInsets.symmetric(vertical:2,horizontal: 18),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)
                  ),
                  hintText: 'Phone Number, email or username',
                  hintStyle: TextStyle(fontSize: 14,color: Color.fromARGB(255, 120, 119, 119))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30,vertical:8 ),
              child:  TextField(
                obscureText: passwordvisible,
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 54, 53, 53),
                  filled:true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 18),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  hintText: 'Password',
                  hintStyle: const TextStyle(fontSize: 14,color: Color.fromARGB(255, 120, 119, 119)),
                  suffixIcon: 
                  IconButton(onPressed: (){
                    setState(() {
                      passwordvisible=!passwordvisible;
                    });
                  }, 
                  icon: Icon(
                    passwordvisible?Icons.visibility:Icons.visibility_off
                    )
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  backgroundColor: Colors.blue,
                  minimumSize: const Size.fromHeight(50)
                ),
                onPressed: () {}, 
                child: const Text('Log in',style: TextStyle(color: Colors.white),)
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Forgot your login details?',
                style: TextStyle(color: Colors.grey),),
                TextButton(onPressed: (){}, child: const Text('Get help logging in.',
            style: TextStyle(color: Color.fromARGB(255, 122, 175, 218)),))
              ],
            ),
          ],
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Don\'t have an account?',
            style: TextStyle(color:Colors.grey
            ),),
            TextButton(onPressed: (){}, child:const Text('Sign Up',
            style: TextStyle(color: Color.fromARGB(255, 114, 161, 203)),)),
          ],
        ),
      ),
    );
  }
}