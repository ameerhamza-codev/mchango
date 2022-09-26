import 'package:flutter/material.dart';
import 'package:mchango/screens/forgot_password/reset_password_success.dart';
import 'package:mchango/utils/constants.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool _isObscure = true;
  bool _isObscureConfirm = true;
  var _passwordController=TextEditingController();
  var _confrimPasswordController=TextEditingController();
  bool checkedValue = true;


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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Center(child: Image.asset('assets/images/forgot_password.png', height: 200)),
            SizedBox(height: 30,),
            Text(' Create a new password', style: TextStyle(
              fontSize: 12,
            ),),
            SizedBox(height: 30,),
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
                  labelText: "New password",
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
            SizedBox(height: 20,),
            Container(
              height: 50,
              child: TextFormField(
                obscureText: _isObscureConfirm,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter same password again';
                  }

                  return null;
                },
                controller: _confrimPasswordController,
                decoration: InputDecoration(
                  border:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  labelText: "Confirm new password",
                  fillColor: colorWhite,
                  filled: true,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscureConfirm ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscureConfirm = !_isObscureConfirm;
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
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ResetSuccess()));

                },
                child: Container(
                  height: 40,
                  width: size.width*0.8,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  child: const Text("Save",style: TextStyle(fontSize:14, fontWeight: FontWeight.w600, color: colorButtonText),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
