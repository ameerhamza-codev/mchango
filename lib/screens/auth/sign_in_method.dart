import 'package:flutter/material.dart';
import 'package:mchango/screens/auth/sign_in.dart';
import 'package:mchango/screens/auth/sign_up.dart';
import 'package:mchango/utils/constants.dart';

class SignInMethod extends StatefulWidget {
  const SignInMethod({Key? key}) : super(key: key);

  @override
  State<SignInMethod> createState() => _SignInMethodState();
}

class _SignInMethodState extends State<SignInMethod> {

  @override
  Widget build(BuildContext context) {
    Size? size= MediaQuery.of(context).size;

    return Scaffold(

      body: Center(
            child: Column(
              children: [
                SizedBox(height: 40,),
                Image.asset('assets/images/welcome.png', height: 200, width: size.width*0.7,),
                SizedBox(height: 10,),
                Text('Let\'s you in', style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: size.width*0.95,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: colorBorder, width: 1.0, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: size.width*0.37,),
                      Image.asset('assets/icons/facebook.png', height: 25, width: 25,),
                      Text(' Facebook', style: TextStyle(
                        fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: size.width*0.95,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: colorBorder, width: 1.0, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: size.width*0.37,),
                      Image.asset('assets/icons/google.png', height: 25, width: 25,),
                      Text(' Google', style: TextStyle(
                          fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: size.width*0.95,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: colorBorder, width: 1.0, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: size.width*0.37,),
                      Image.asset('assets/icons/apple.png', height: 25, width: 25,),
                      Text(' Apple', style: TextStyle(
                          fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                ),
                Text('or' , style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),),
                SizedBox(height: 10,),
                Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SignIn()));
                    },
                    child: Container(
                      height: 40,
                      width: size.width*0.8,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: const Text("Sign in with password",style: TextStyle(fontSize:14, fontWeight: FontWeight.w600, color: colorWhite),),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Center(
                          child:Text("Don\'t have an account?", style: TextStyle(color: colorTextGrey, fontSize: 14),)
                      ),
                    ),
                    Center(
                        child:InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SignUp()));
                            },
                            child:  Text("Sign up", style: TextStyle(color: colorTextGreen, fontSize: 14, fontWeight: FontWeight.w600),)
                        )
                    ),
                  ],
                ),


              ],
            ),
      ),
    );
  }
}
