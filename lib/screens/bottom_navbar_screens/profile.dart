import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mchango/screens/others/sidemenu.dart';
import 'package:mchango/utils/constants.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    Size? size= MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Custom AppBar
                Container(
                  height: 60,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset('assets/images/AppIcon.png'),
                      SizedBox(width: 15,),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Profile', style: TextStyle(
                                color: colorTextBlack,
                                fontSize: 24,
                                fontWeight: FontWeight.w500
                            ),),
                            Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Menu()));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(right: 5),
                                    width: 40,
                                    height: 40,
                                    child: Icon(Icons.settings, size: 25, color: primaryColor,),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: primaryColor.withOpacity(0.2)),
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: Icon(FontAwesomeIcons.ellipsisVertical, size: 25, color: primaryColor,),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: primaryColor.withOpacity(0.2)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //Body
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30,),
                      Center(
                        child: Container(
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
                      ),
                      SizedBox(height: 10,),
                      Center(child: Text('Adam Smith', style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18
                      ),)),
                      SizedBox(height: 10,),
                      Text('About', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                      ),),
                      SizedBox(height: 10,),
                      Text('Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', style: TextStyle(
                          fontSize: 14
                      ),),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Interest', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16
                          ),),
                          SizedBox(width: 10,),
                          Icon(Icons.edit, color: primaryColor, size: 16,),

                        ],
                      ),
                      SizedBox(height: 15,),
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          Container(
                            height: 40,
                            width: size.width*0.20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: primaryColor,)
                            ),
                            alignment: Alignment.center,
                            child: const Text("Medical",style: TextStyle(fontSize:14, fontWeight:FontWeight.w600,color: colorTextGreen),),
                          ),
                          Container(
                            height: 40,
                            width: size.width*0.20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: primaryColor,)
                            ),
                            alignment: Alignment.center,
                            child: const Text("Disaster",style: TextStyle(fontSize:14, fontWeight:FontWeight.w600,color: colorTextGreen),),
                          ),
                          Container(
                            height: 40,
                            width: size.width*0.20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: primaryColor,)
                            ),
                            alignment: Alignment.center,
                            child: const Text("Education",style: TextStyle(fontSize:14, fontWeight:FontWeight.w600,color: colorTextGreen),),
                          ),
                          Container(
                            height: 40,
                            width: size.width*0.20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: primaryColor,)
                            ),
                            alignment: Alignment.center,
                            child: const Text("Social",style: TextStyle(fontSize:14, fontWeight:FontWeight.w600,color: colorTextGreen),),
                          ),
                          Container(
                            height: 40,
                            width: size.width*0.20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: primaryColor,)
                            ),
                            alignment: Alignment.center,
                            child: const Text("Orphanage",style: TextStyle(fontSize:14, fontWeight:FontWeight.w600,color: colorTextGreen),),
                          ),
                          Container(
                            height: 40,
                            width: size.width*0.20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: primaryColor,)
                            ),
                            alignment: Alignment.center,
                            child: const Text("Humanity",style: TextStyle(fontSize:14, fontWeight:FontWeight.w600,color: colorTextGreen),),
                          ),
                          Container(
                            height: 40,
                            width: size.width*0.30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: primaryColor,)
                            ),
                            alignment: Alignment.center,
                            child: const Text("Environment",style: TextStyle(fontSize:14, fontWeight:FontWeight.w600,color: colorTextGreen),),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                    ],
                  ),
                )



              ],
            ),
          )
      ),
    );
  }
}
