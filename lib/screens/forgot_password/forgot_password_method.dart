import 'package:flutter/material.dart';
import 'package:mchango/screens/forgot_password/reset_password.dart';
import 'package:mchango/utils/constants.dart';

class ForgotPasswordMethod extends StatefulWidget {
  const ForgotPasswordMethod({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordMethod> createState() => _ForgotPasswordMethodState();
}

class _ForgotPasswordMethodState extends State<ForgotPasswordMethod> {

  @override
  Widget build(BuildContext context) {
    Size? size= MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        title: Text('Forgot Password'),
        backgroundColor: secondaryColor,
        iconTheme: IconThemeData(
          color: primaryColor, //change your color here
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Image.asset('assets/images/forgot_password.png', height: 200),
              SizedBox(height: 30,),
              Text('Select which method you want to use to reset your password', style: TextStyle(
                fontSize: 12,
              ),),
              SizedBox(height: 30,),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: colorBorder, width: 1.0, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ResetPassword()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Icon(Icons.sms, size: 20, color: primaryColor,),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: primaryColor.withOpacity(0.2)),
                      ),
                      Text(' Via SMS ', style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: colorBorder, width: 1.0, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ResetPassword()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Icon(Icons.email, size: 20, color: primaryColor,),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: primaryColor.withOpacity(0.2)),
                      ),
                      Text(' Via Email', style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    );
  }
}
