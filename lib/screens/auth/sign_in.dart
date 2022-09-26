import 'package:flutter/material.dart';
import 'package:mchango/screens/auth/sign_up.dart';
import 'package:mchango/screens/bottom_navbar_screens/bottomnavbar.dart';
import 'package:mchango/screens/forgot_password/forgot_password_method.dart';
import 'package:mchango/utils/constants.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isObscure = true;
  var _emailController=TextEditingController();
  var _passwordController=TextEditingController();
  bool checkedValue = true;

  @override
  Widget build(BuildContext context) {
    Size? size= MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Image.asset('assets/images/wecare.png', height: 150),
              SizedBox(height: 30,),
              Text('Sign in to your account', style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),),
              SizedBox(height: 30,),
              Container(
                height: 50,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email!';
                    }
                    return null;
                  },
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    labelText: 'Email',
                    fillColor: colorWhite,
                    filled: true,

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                child: TextFormField(
                  obscureText: _isObscure,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }

                    return null;
                  },
                  controller: _passwordController,
                  decoration: InputDecoration(
                    border:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    labelText: "Password",
                    fillColor: colorWhite,
                    filled: true,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Checkbox(
                    fillColor: MaterialStateProperty.all(primaryColor),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: checkedValue,
                    onChanged: (newValue) {
                      setState(() {
                        checkedValue = newValue!;
                      });
                    },
                  ),
                  Text("Remember me"),
                ],
              ),

              SizedBox(height: 10,),
              Center(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => BottomNavBar()));
                  },
                  child: Container(
                    height: 40,
                    width: size.width*0.8,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: const Text("Sign in",style: TextStyle(fontSize:14, fontWeight: FontWeight.w600, color: colorButtonText),),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ForgotPasswordMethod()));
                },
                child: Text('Forgot the password?' , style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: colorTextGreen
                ),),
              ),
              SizedBox(height: 20,),
              Text('or continue with' , style: TextStyle(
                fontSize: 14,
              ),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/icons/facebook.png', width: 30, height: 30,),
                  Image.asset('assets/icons/google.png', width: 30, height: 30,),
                  Image.asset('assets/icons/apple.png', width: 30, height: 30,),
                ],
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
      ),
    );
  }
}
