import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mchango/utils/constants.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> imagesList = [
    'https://images.unsplash.com/photo-1497655392221-e645087843da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1532629345422-7515f3d16bb6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1459183885421-5cc683b8dbba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1597762117709-859f744b84c3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  ];
  final List<String> titles = [
    ' Help to make change ',
    ' Help to make change ',
    ' Help to make change ',
    ' Help to make change ',
  ];
  int _currentIndex = 0;

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
                            Text('Mchango', style: TextStyle(
                                color: colorTextBlack,
                                fontSize: 24,
                                fontWeight: FontWeight.w500
                            ),),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  width: 40,
                                  height: 40,
                                  child: Icon(Icons.search, size: 25, color: primaryColor,),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: primaryColor.withOpacity(0.2)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 5),
                                  width: 40,
                                  height: 40,
                                  child: Icon(Icons.notifications, size: 25, color: primaryColor,),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: primaryColor.withOpacity(0.2)),
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: Icon(Icons.bookmark, size: 25, color: primaryColor,),
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
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    // enlargeCenterPage: true,
                    //scrollDirection: Axis.vertical,
                    onPageChanged: (index, reason) {
                      setState(
                            () {
                          _currentIndex = index;
                        },
                      );
                    },
                  ),
                  items: imagesList
                      .map(
                        (item) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        margin: EdgeInsets.only(
                          top: 10.0,
                          bottom: 10.0,
                        ),
                        elevation: 6.0,
                        shadowColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Image.network(
                                item,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                              Positioned(
                                left: 10,
                                bottom: 10,
                                child: Text(
                                  '${titles[_currentIndex]}',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor: Colors.black45,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                      .toList(),
                ),
                
                Container(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Urgent Fundraising',
                              style: TextStyle(
                                  color: colorTextBlack,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)
                            ),
                            Text('See all',
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 40,
                              width: size.width*0.20,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(color: primaryColor,)
                              ),
                              alignment: Alignment.center,
                              child: const Text("All",style: TextStyle(fontSize:14,fontWeight:FontWeight.w600,color: colorTextWhite),),
                            ),
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
                          ],
                        ),
                        SizedBox(height: 15,),
                        
                        Container(
                          height: 230,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 200,
                                decoration: BoxDecoration(
                                  border: Border.all(color: colorBorder, style: BorderStyle.solid, width: 1.0),
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15.0),
                                          topRight: Radius.circular(15.0),
                                        ),
                                        child: Image.asset('assets/images/Image1.png')
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 15,),
                                          Text('Assist with Surgical', style: TextStyle(
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
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 200,
                                decoration: BoxDecoration(
                                    border: Border.all(color: colorBorder, style: BorderStyle.solid, width: 1.0),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15.0),
                                          topRight: Radius.circular(15.0),
                                        ),
                                        child: Image.asset('assets/images/Image1.png')
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 15,),
                                          Text('Assist with Surgical', style: TextStyle(
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
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Watch the Impact of Your Donation',
                                style: TextStyle(
                                    color: colorTextBlack,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600)
                            ),
                            Text('See all',
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 15,),

                        Container(
                          height: 180,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 130,
                                decoration: BoxDecoration(
                                    border: Border.all(color: colorBorder, style: BorderStyle.solid, width: 1.0),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                        child: Image.asset('assets/images/image-1.png', width: 130, height: 180, fit: BoxFit.cover,)
                                    ),
                                    Center(child: Image.asset('assets/icons/play.png', width: 40, height: 40,)),
                                    Positioned(
                                      left: 5,
                                      bottom: 10,
                                      child: Text('Sarah\'s surgery', style: TextStyle(
                                        color: colorTextWhite,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        backgroundColor: Colors.black26
                                      ),),
                                    )

                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 130,
                                decoration: BoxDecoration(
                                    border: Border.all(color: colorBorder, style: BorderStyle.solid, width: 1.0),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                        child: Image.asset('assets/images/image-1.png', width: 130, height: 180, fit: BoxFit.cover,)
                                    ),
                                    Center(child: Image.asset('assets/icons/play.png', width: 40, height: 40,)),
                                    Positioned(
                                      left: 5,
                                      bottom: 10,
                                      child: Text('Sarah\'s surgery', style: TextStyle(
                                          color: colorTextWhite,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          backgroundColor: Colors.black26
                                      ),),
                                    )

                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 130,
                                decoration: BoxDecoration(
                                    border: Border.all(color: colorBorder, style: BorderStyle.solid, width: 1.0),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                        child: Image.asset('assets/images/image-1.png', width: 130, height: 180, fit: BoxFit.cover,)
                                    ),
                                    Center(child: Image.asset('assets/icons/play.png', width: 40, height: 40,)),
                                    Positioned(
                                      left: 5,
                                      bottom: 10,
                                      child: Text('Sarah\'s surgery', style: TextStyle(
                                          color: colorTextWhite,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          backgroundColor: Colors.black26
                                      ),),
                                    )

                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 130,
                                decoration: BoxDecoration(
                                    border: Border.all(color: colorBorder, style: BorderStyle.solid, width: 1.0),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15.0),
                                        ),
                                        child: Image.asset('assets/images/image-1.png', width: 130, height: 180, fit: BoxFit.cover,)
                                    ),
                                    Center(child: Image.asset('assets/icons/play.png', width: 40, height: 40,)),
                                    Positioned(
                                      left: 5,
                                      bottom: 10,
                                      child: Text('Sarah\'s surgery', style: TextStyle(
                                          color: colorTextWhite,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          backgroundColor: Colors.black26
                                      ),),
                                    )

                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),

                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Prayers from the good people',
                                style: TextStyle(
                                    color: colorTextBlack,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600)
                            ),
                            Text('See all',
                              style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 15,),
                        Container(
                          height: 185,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 230,
                                decoration: BoxDecoration(
                                    border: Border.all(color: colorBorder, style: BorderStyle.solid, width: 1.0),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 30,
                                                width: 30,
                                                margin: EdgeInsets.only(right: 10, bottom: 10),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(50),
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/images/profile-pic.jpg'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('John Doe', style: TextStyle(
                                                      fontSize: 12, fontWeight: FontWeight.w500, color: colorTextBlack
                                                  ),),
                                                  Text('Today', style: TextStyle(
                                                      fontSize: 10, fontWeight: FontWeight.w500, color: colorTextGrey
                                                  ),),
                                                  SizedBox(height: 5,)
                                                ],),
                                            ],
                                          ),
                                          Icon(Icons.more_vert, color: primaryColor,)
                                        ],
                                      ),
                                    ),
                                    Divider(thickness: 1, color: colorBorder,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Hopefully Audrey can get surgery soon, recover from her illness, and play with her friends..'),
                                          Container(
                                            margin: EdgeInsets.symmetric(vertical: 10),
                                            child: Text('You and 48 others sent this prayer', style: TextStyle(
                                              fontSize: 10,
                                              color: colorTextGrey
                                            ),),
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.favorite_outlined, color: primaryColor, size: 15,),
                                              Text('Aamiin'),
                                              SizedBox(width: 10,),
                                              Icon(Icons.share, color: primaryColor, size: 15,),
                                              Text('Share'),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 230,
                                decoration: BoxDecoration(
                                    border: Border.all(color: colorBorder, style: BorderStyle.solid, width: 1.0),
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 30,
                                                width: 30,
                                                margin: EdgeInsets.only(right: 10, bottom: 10),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(50),
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/images/profile-pic.jpg'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('John Doe', style: TextStyle(
                                                      fontSize: 12, fontWeight: FontWeight.w500, color: colorTextBlack
                                                  ),),
                                                  Text('Today', style: TextStyle(
                                                      fontSize: 10, fontWeight: FontWeight.w500, color: colorTextGrey
                                                  ),),
                                                  SizedBox(height: 5,)
                                                ],),
                                            ],
                                          ),
                                          Icon(Icons.more_vert, color: primaryColor,)
                                        ],
                                      ),
                                    ),
                                    Divider(thickness: 1, color: colorBorder,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Hopefully Audrey can get surgery soon, recover from her illness, and play with her friends..'),
                                          Container(
                                            margin: EdgeInsets.symmetric(vertical: 10),
                                            child: Text('You and 48 others sent this prayer', style: TextStyle(
                                                fontSize: 10,
                                                color: colorTextGrey
                                            ),),
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.favorite_outlined, color: primaryColor, size: 15,),
                                              Text('Aamiin'),
                                              SizedBox(width: 10,),
                                              Icon(Icons.share, color: primaryColor, size: 15,),
                                              Text('Share'),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),



                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,)


              ],
            ),
          )
      ),
    );
  }
}
