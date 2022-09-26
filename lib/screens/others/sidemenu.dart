import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mchango/utils/constants.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool _switchValue=false;

  @override
  Widget build(BuildContext context) {
    Size? size= MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        title: Text('Settings'),
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
              ListTile(
                leading: Container(
                  margin: EdgeInsets.only(right: 5),
                  width: 40,
                  height: 40,
                  child: Icon(Icons.person, size: 25, color: primaryColor,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: primaryColor.withOpacity(0.2)),
                ),
                title: Text(
                  'Edit Profile',
                  textScaleFactor: 1.1,
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              Divider(thickness: 1, color: colorBorder,),
              SizedBox(height: 10,),
              ListTile(
                leading: Container(
                  margin: EdgeInsets.only(right: 5),
                  width: 40,
                  height: 40,
                  child: Icon(Icons.notifications, size: 25, color: primaryColor,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: primaryColor.withOpacity(0.2)),
                ),
                title: Text(
                  'Notification',
                  textScaleFactor: 1.1,
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              Divider(thickness: 1, color: colorBorder,),
              SizedBox(height: 10,),
              ListTile(
                leading: Container(
                  margin: EdgeInsets.only(right: 5),
                  width: 40,
                  height: 40,
                  child: Icon(Icons.visibility, size: 25, color: primaryColor,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: primaryColor.withOpacity(0.2)),
                ),
                title: Text(
                  'Dark Mode',
                  textScaleFactor: 1.1,
                ),
                trailing:  CupertinoSwitch(
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
              ),
              Divider(thickness: 1, color: colorBorder,),
              SizedBox(height: 10,),
              ListTile(
                leading: Container(
                  margin: EdgeInsets.only(right: 5),
                  width: 40,
                  height: 40,
                  child: Icon(Icons.info, size: 25, color: primaryColor,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: primaryColor.withOpacity(0.2)),
                ),
                title: Text(
                  'Help',
                  textScaleFactor: 1.1,
                ),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              Divider(thickness: 1, color: colorBorder,),
              SizedBox(height: 10,),
              ListTile(
                leading: Container(
                  margin: EdgeInsets.only(right: 5),
                  width: 40,
                  height: 40,
                  child: Icon(Icons.exit_to_app, size: 25, color: Colors.red,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent.withOpacity(0.2)),
                ),
                title: Text(
                  'Logout',
                  textScaleFactor: 1.1,
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
