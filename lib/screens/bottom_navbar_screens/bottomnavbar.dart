import 'package:flutter/material.dart';
import 'package:mchango/screens/bottom_navbar_screens/donation.dart';
import 'package:mchango/screens/bottom_navbar_screens/fundraising.dart';
import 'package:mchango/screens/bottom_navbar_screens/home.dart';
import 'package:mchango/screens/bottom_navbar_screens/inbox.dart';
import 'package:mchango/screens/bottom_navbar_screens/profile.dart';
import 'package:mchango/utils/constants.dart';

class BottomNavBar extends StatefulWidget {

  @override
  _BottomNavigationState createState() => new _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavBar>{

  int _currentIndex = 0;

  List<Widget> _children=[];

  @override
  void initState() {
    super.initState();
    _children = [
      Home(),
      Donation(),
      Fundraising(),
      //Inbox(),
      UserProfile(),
    ];
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      bottomNavigationBar: Container(
        height: AppBar().preferredSize.height,
        decoration: BoxDecoration(
          color: secondaryColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300, //New
                blurRadius: 20.0,
                offset: Offset(0, -0.1))
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){
                onTabTapped(0);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/icons/home.png",height: 20,color: _currentIndex==0?primaryColor:colorTextGrey),

                ],
              ),
            ),
            InkWell(
              onTap: (){
                onTabTapped(1);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/icons/donation.png",height: 20,color: _currentIndex==1?primaryColor:colorTextGrey),

                ],
              ),
            ),
            InkWell(
              onTap: (){
                onTabTapped(2);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/icons/fundraising.png",height: 18,color: _currentIndex==2?primaryColor:colorTextGrey),

                ],
              ),
            ),
            // InkWell(
            //   onTap: (){
            //     onTabTapped(3);
            //   },
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: <Widget>[
            //       Image.asset("assets/icons/inbox.png",height: 20,color: _currentIndex==3?primaryColor:colorTextGrey),
            //
            //     ],
            //   ),
            // ),
            InkWell(
              onTap: (){
                onTabTapped(3);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/icons/profile.png",height: 20,color: _currentIndex==3?primaryColor:colorTextGrey),

                ],
              ),
            ),
          ],
        ),
      ),
      body: _children[_currentIndex],
    );
  }
}