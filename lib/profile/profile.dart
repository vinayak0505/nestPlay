import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    double screenWidth = _mediaQueryData.size.width;
    double screenHeight = _mediaQueryData.size.height;
    double blockSizeHorizontal = screenWidth / 100;
    double blockSizeVertical = screenHeight / 100;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text('profile'),
          actions: [
            IconButton(icon: Icon(FontAwesomeIcons.shareAlt), onPressed: () {}),
            IconButton(icon: Icon(FontAwesomeIcons.ban), onPressed: () {})
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Theme.of(context).accentColor,
                    child: CircleAvatar(
                        radius: 46,
                        backgroundImage: AssetImage('assets/home/UserImage.jpg')),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('9999999999', style: Theme.of(context).textTheme.headline2),
                        Icon(FontAwesomeIcons.hatCowboy)
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Rs0',
                          style: Theme.of(context).textTheme.headline1),
                      Text('Winnings')
                    ],
                  ),
                  Column(
                    children: [
                      Text('0',
                          style: Theme.of(context).textTheme.headline1),
                      Text('Followers')
                    ],
                  ),
                  Column(
                    children: [
                      Text('0',
                          style: Theme.of(context).textTheme.headline1),
                      Text('Following')
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              OutlineButton(
                padding: EdgeInsets.symmetric(horizontal: 100),
                borderSide: BorderSide(width: 2.0),
                highlightedBorderColor: Colors.pink,
                onPressed: () {},
                child: Text('Edit Profile', style: Theme.of(context).textTheme.headline3),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/profile/referImage.png')),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/profile/friends.png',
                              scale: 3,
                            ),
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Get Rs75 Bonus cash'),
                                Text('Every time a friend signs up on nestPlay',
                                    style:Theme.of(context).textTheme.bodyText2),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/profile/deposit.png',
                              scale: 3
                            ),
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Get 30% of friend's Deposit amount"),
                                Text('Applicable on first-time deposits. Up to \$100 Bonus Cash', style:Theme.of(context).textTheme.bodyText2),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              'assets/profile/cashup.png',
                              scale: 4,
                            ),
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Rs 10,000 CASH up for grabs!'),
                                Text('Weekly Leader board ',
                                    style:Theme.of(context).textTheme.bodyText2),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
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
