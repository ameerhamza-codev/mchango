import 'package:flutter/material.dart';
import 'package:mchango/utils/constants.dart';

class ResetSuccess extends StatelessWidget {
  const ResetSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size? size= MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: secondaryColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png', height: 200),
                  SizedBox(height: 20,),
                  Text('Congratulations!', style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: primaryColor
                  ),),
                  SizedBox(height: 20,),
                  Text('Your account is ready to use', style: TextStyle(
                    fontSize: 12,
                  ),),
                ],
              )
          ),
          Expanded(
              flex: 2,
              child: Center(
                child: InkWell(
                  onTap: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ResetPassword()));
                  },
                  child: Container(
                    height: 40,
                    width: size.width*0.8,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: const Text("Go to Homepage",style: TextStyle(fontSize:14, fontWeight: FontWeight.w600, color: colorButtonText),),
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
