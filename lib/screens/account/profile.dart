import 'package:flutter/material.dart';
import 'package:mchango/screens/bottom_navbar_screens/bottomnavbar.dart';
import 'package:mchango/utils/constants.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? gender = 'Male';

  @override
  Widget build(BuildContext context) {
    Size? size= MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        title: Text('Profile'),
        backgroundColor: secondaryColor,
        iconTheme: IconThemeData(
          color: primaryColor, //change your color here
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 40,),
              Stack(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile-pic.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),

                  ),

                ],
              ),
              SizedBox(height: 30,),
              Container(
                height: 50,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your full name!';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    labelText: 'Full Name',
                    fillColor: colorWhite,
                    filled: true,

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email!';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    labelText: 'Email',
                    fillColor: colorWhite,
                    filled: true,
                    suffixIcon: Icon(Icons.email),

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number!';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    labelText: 'Phone Number',
                    fillColor: colorWhite,
                    filled: true,
                    suffixIcon: Icon(Icons.phone),

                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black54,)
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: Text('Gender', style: TextStyle(color: Colors.black54, fontSize: 16),),
                    items: <String>['Male', 'Female'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value, style: TextStyle(color: Colors.black54, fontSize: 16)),
                      );
                    }).toList(),
                    onChanged: (String? val) {
                      setState(() {
                        gender = val;
                      });
                    },
                  ),
                )
              ),
              SizedBox(height: 20,),
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
                    child: const Text("Save",style: TextStyle(fontSize:14, fontWeight: FontWeight.w600, color: colorButtonText),),
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
