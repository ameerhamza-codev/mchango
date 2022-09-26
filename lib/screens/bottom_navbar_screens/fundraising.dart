import 'package:flutter/material.dart';
import 'package:mchango/utils/constants.dart';

class Fundraising extends StatefulWidget {
  const Fundraising({Key? key}) : super(key: key);

  @override
  State<Fundraising> createState() => _FundraisingState();
}

class _FundraisingState extends State<Fundraising> {
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
                            Text('My Fundraising', style: TextStyle(
                                color: colorTextBlack,
                                fontSize: 24,
                                fontWeight: FontWeight.w500
                            ),),
                            Container(
                              width: 40,
                              height: 40,
                              child: Icon(Icons.download, size: 25, color: primaryColor,),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: primaryColor.withOpacity(0.2)),
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
                  child: DefaultTabController(
                      length: 2, // length of tabs
                      initialIndex: 0,
                      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                        Container(
                          child: TabBar(
                              labelColor: primaryColor,
                              unselectedLabelColor: Colors.black,
                              indicatorColor: primaryColor,

                              tabs: [
                                Tab(child:Text('My Fundraising', style: TextStyle(color: colorTextBlack, fontSize: 14, fontWeight: FontWeight.w500),)),
                                Tab(child: Text('Activity', style: TextStyle(color: colorTextBlack, fontSize: 14, fontWeight: FontWeight.w500),)),
                          ]),
                        ),
                        Container(
                            height: size.width> 756 ? size.height-50: 390, //height of TabBarView
                            decoration: BoxDecoration(
                                border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                            ),
                            child: TabBarView(children: <Widget>[
                              ListView(
                                children: [
                                  SizedBox(height: 15,),
                                  Wrap(
                                    spacing: 5,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: size.width*0.22,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            border: Border.all(color: primaryColor,)
                                        ),
                                        alignment: Alignment.center,
                                        child: const Text("All (1)",style: TextStyle(fontSize:14, fontWeight:FontWeight.w600,color: colorTextGreen),),
                                      ),
                                      Container(
                                        height: 40,
                                        width: size.width*0.22,
                                        decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius: BorderRadius.circular(30),
                                            border: Border.all(color: primaryColor,)
                                        ),
                                        alignment: Alignment.center,
                                        child: const Text("Ongoing (1)",style: TextStyle(fontSize:14,fontWeight:FontWeight.w600,color: colorTextWhite),),
                                      ),
                                      Container(
                                        height: 40,
                                        width: size.width*0.22,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            border: Border.all(color: primaryColor,)
                                        ),
                                        alignment: Alignment.center,
                                        child: const Text("Past (0)",style: TextStyle(fontSize:14, fontWeight:FontWeight.w600,color: colorTextGreen),),
                                      ),
                                      Container(
                                        height: 40,
                                        width: size.width*0.22,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            border: Border.all(color: primaryColor,)
                                        ),
                                        alignment: Alignment.center,
                                        child: const Text("Pending (0)",style: TextStyle(fontSize:14, fontWeight:FontWeight.w600,color: colorTextGreen),),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15,),
                                  Padding(padding: EdgeInsets.all(10),
                                  child: Container(
                                          height: 200,
                                          child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: [
                                          Container(
                                          margin: EdgeInsets.only(bottom: 10),
                                          width: size.width*0.9,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: colorBorder, style: BorderStyle.solid, width: 1.0),
                                              borderRadius: BorderRadius.circular(15)
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(15),
                                                child:  Container(
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(color: colorBorder, style: BorderStyle.solid, width: 1.0),
                                                      borderRadius: BorderRadius.circular(15)
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      ClipRRect(
                                                          borderRadius: BorderRadius.only(
                                                            topLeft: Radius.circular(15.0),
                                                            bottomLeft: Radius.circular(15.0),
                                                          ),
                                                          child: Image.asset('assets/images/funds.png',)
                                                      ),
                                                      Container(
                                                        width: size.width*0.5,
                                                        child: Padding(
                                                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              SizedBox(height: 15,),
                                                              Text('Help Improve Child Hel...', style: TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.w600,
                                                                  color: colorTextBlack
                                                              ),),
                                                              SizedBox(height: 10,),
                                                              RichText(
                                                                text: const TextSpan(
                                                                  // Note: Styles for TextSpans must be explicitly defined.
                                                                  // Child text spans will inherit styles from parent
                                                                  style: TextStyle(
                                                                    fontSize: 12.0,
                                                                  ),
                                                                  children: <TextSpan>[
                                                                    TextSpan(text:"3,462", style: TextStyle(
                                                                      color: colorTextGreen,
                                                                      fontSize: 12,
                                                                    ),),
                                                                    TextSpan(text: ' fund raised from \$4,400', style: TextStyle(
                                                                      color: colorTextBlack,
                                                                      fontSize: 12,
                                                                    ),),
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(height: 10,),
                                                              LinearProgressIndicator(
                                                                color: primaryColor,
                                                                backgroundColor: colorTextGrey,
                                                                value: 0.8,
                                                              ),
                                                              SizedBox(height: 10,),
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                children: [
                                                                  RichText(
                                                                    text: const TextSpan(
                                                                      // Note: Styles for TextSpans must be explicitly defined.
                                                                      // Child text spans will inherit styles from parent
                                                                      style: TextStyle(
                                                                        fontSize: 12.0,
                                                                      ),
                                                                      children: <TextSpan>[
                                                                        TextSpan(text:"1,859", style: TextStyle(
                                                                          color: colorTextGreen,
                                                                          fontSize: 12,
                                                                        ),),
                                                                        TextSpan(text: ' Donators', style: TextStyle(
                                                                          color: colorTextBlack,
                                                                          fontSize: 12,
                                                                        ),),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  RichText(
                                                                    text: const TextSpan(
                                                                      // Note: Styles for TextSpans must be explicitly defined.
                                                                      // Child text spans will inherit styles from parent
                                                                      style: TextStyle(
                                                                        fontSize: 12.0,
                                                                      ),
                                                                      children: <TextSpan>[
                                                                        TextSpan(text:"3", style: TextStyle(
                                                                          color: colorTextGreen,
                                                                          fontSize: 12,
                                                                        ),),
                                                                        TextSpan(text: ' Days left', style: TextStyle(
                                                                          color: colorTextBlack,
                                                                          fontSize: 12,
                                                                        ),),
                                                                      ],
                                                                    ),
                                                                  ),

                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      )

                                                    ],
                                                  ),
                                                )
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Icon(Icons.edit, color: primaryColor, size: 15,),
                                                        Text('Edit'),
                                                        SizedBox(width: 10,),
                                                        Icon(Icons.share, color: primaryColor, size: 15,),
                                                        Text('Share'),
                                                      ],
                                                    ),
                                                    Container(
                                                      height: 30,
                                                      width: size.width*0.22,
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(30),
                                                          border: Border.all(color: primaryColor,)
                                                      ),
                                                      alignment: Alignment.center,
                                                      child: const Text("See results",style: TextStyle(fontSize:14, fontWeight:FontWeight.w600,color: colorTextGreen),),
                                                    ),
                                                  ],
                                                ),
                                              )

                                            ]
                                          ),
                                        ),
                                      ]
                                    ),
                                  ),
                                  )
                                ],
                              ),
                              ListView(
                                children: [
                                  SizedBox(height: 10,),
                                  ListTile(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: colorBorder, width: 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    leading: CircleAvatar(foregroundImage: AssetImage('assets/images/profile-pic.jpg'),),
                                    title: Text(
                                      'Jane Cooper',
                                      textScaleFactor: 1.1,
                                    ),
                                    // trailing: Icon(Icons.done),
                                    subtitle:  RichText(
                                      text: const TextSpan(
                                        text: 'Donated ',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: colorTextBlack
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '\$25',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: primaryColor
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  ListTile(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: colorBorder, width: 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    leading: CircleAvatar(foregroundImage: AssetImage('assets/images/profile-pic.jpg'),),
                                    title: Text(
                                      'Jane Cooper',
                                      textScaleFactor: 1.1,
                                    ),
                                    // trailing: Icon(Icons.done),
                                    subtitle:  RichText(
                                      text: const TextSpan(
                                        text: 'Donated ',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: colorTextBlack
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '\$25',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: primaryColor
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  ListTile(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: colorBorder, width: 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    leading: CircleAvatar(foregroundImage: AssetImage('assets/images/profile-pic.jpg'),),
                                    title: Text(
                                      'Jane Cooper',
                                      textScaleFactor: 1.1,
                                    ),
                                    // trailing: Icon(Icons.done),
                                    subtitle:  RichText(
                                      text: const TextSpan(
                                        text: 'Donated ',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: colorTextBlack
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '\$25',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: primaryColor
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  ListTile(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: colorBorder, width: 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    leading: CircleAvatar(foregroundImage: AssetImage('assets/images/profile-pic.jpg'),),
                                    title: Text(
                                      'Jane Cooper',
                                      textScaleFactor: 1.1,
                                    ),
                                    // trailing: Icon(Icons.done),
                                    subtitle:  RichText(
                                      text: const TextSpan(
                                        text: 'Donated ',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: colorTextBlack
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '\$25',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: primaryColor
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )


                            ])
                        )
                      ])
                  )
                )



              ],
            ),
          )
      ),
    );
  }
}
