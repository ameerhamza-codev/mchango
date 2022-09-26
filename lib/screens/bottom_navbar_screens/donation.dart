import 'package:clean_calendar/clean_calendar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mchango/utils/constants.dart';

class Donation extends StatefulWidget {
  const Donation({Key? key}) : super(key: key);

  @override
  State<Donation> createState() => _DonationState();
}

class _DonationState extends State<Donation> {

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
                            Text('My Donations', style: TextStyle(
                              color: colorTextBlack,
                              fontSize: 24,
                              fontWeight: FontWeight.w500
                            ),),
                            Container(
                              width: 40,
                              height: 40,
                              child: Icon(FontAwesomeIcons.ellipsisVertical, size: 25, color: primaryColor,),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: primaryColor.withOpacity(0.2)),
                            ),                          ],
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
                      CleanCalendar(
                        datePickerCalendarView: DatePickerCalendarView.monthView,
                        enableDenseViewForDates: true,
                        enableDenseSplashForDates: true,
                        datesForStreaks: [
                          // DateTime(2022, 8, 5),
                          // DateTime(2022, 8, 6),
                          // DateTime(2022, 8, 7),
                          // DateTime(2022, 8, 9),
                          // DateTime(2022, 8, 10),
                          // DateTime(2022, 8, 11),
                          // DateTime(2022, 8, 13),
                          // DateTime(2022, 8, 20),
                          // DateTime(2022, 8, 21),
                          // DateTime(2022, 8, 23),
                          // DateTime(2022, 8, 24),
                        ],
                        dateSelectionMode: DatePickerSelectionMode.single,
                        onCalendarViewDate: (DateTime calendarViewDate) {
                          // print(calendarViewDate);
                        },
                      ),
                      SizedBox(height: 10,),
                      Text('My Donations (0)', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),),
                      Container(
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset('assets/images/no_donations.png', height: 150,),
                              SizedBox(height: 10,),
                              Text('You have not made a donation')
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: InkWell(
                          onTap: (){
                            //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SignIn()));
                          },
                          child: Container(
                            height: 40,
                            width: size.width*0.8,
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.center,
                            child: const Text("Make a Donation Now",style: TextStyle(fontSize:16, fontWeight: FontWeight.w500, color: colorWhite),),
                          ),
                        ),
                      ),

                    ],
                  ),
                )



              ],
            ),
          )
      ),
    );  }
}
