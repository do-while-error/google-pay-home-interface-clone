

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gpay Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  List<String> img = ["assets/images/user1.jpg","assets/images/user2.jpg","assets/images/user3.jpg","assets/images/user4.jpg","assets/images/user5.jpg","assets/images/user6.jpg","assets/images/user7.jpg","assets/images/down1.png"];
  var name =["Ayush","Ritika","Amit","Mohan","Deepak","Mona","Shashank","More"];

  var con = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black87,
          child: Column(
            children: [
              Stack(
              children: [

                Image.asset("assets/images/home1.jpg",
                  height: 250,
                ),

                // Padding(
                //   padding: const EdgeInsets.only(top: 50, left: 20),
                  Padding(
                    padding: const EdgeInsets.only(top: 50,left: 20),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .70,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,

                              fillColor: Colors.black87,
                              prefixIcon: const Icon(Icons.search,
                              color: Colors.grey,
                              ),
                              hintText: "Pay by name or phone number",
                              hintStyle: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 16,
                                height: 1.3,
                              ),
                              border : OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                 borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                         SizedBox(
                          width: MediaQuery.of(context).size.width * 0.060,
                        ),

                         CircleAvatar(
                          radius: 18,
                          backgroundImage: AssetImage("assets/images/propic.png"),
                          // backgroundColor: Colors.red,
                        ),
                        // SizedBox(
                        //   width: MediaQuery.of(context).size.width * 0.10,
                        // ),
                      ],
                    ),
                  ),
               // ),
              ]
              ),

              Container(
                height: 260,
                 // color: Colors.red,
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.qr_code_scanner_rounded,
                      size: 25,
                        color: Colors.white,
                      ),

                      SizedBox(
                        height: 9,
                      ),

                      Text("Scan any\n QR code",
                      style: TextStyle(
                        color: Colors.white,
                        // fontWeight: FontWeight.bold
                      ),
                      )
                    ],
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.addressBook,
                          size: 25,
                          color: Colors.white,
                        ),

                        SizedBox(
                          height: 9,
                        ),

                        Text("    Pay\ncontacts",
                        style: TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                    // color: Colors.blue,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.send_to_mobile_outlined,
                          size: 25,
                          color: Colors.white,
                        ),

                        SizedBox(
                          height: 9,
                        ),

                        Text("Pay phone\n   number",
                        style: TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                    // color: Colors.blue,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.buildingColumns,
                          size: 25,
                          color: Colors.white,
                        ),

                        SizedBox(
                          height: 9,
                        ),

                        Text("   Bank\n transfer",
                        style: TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                    // color: Colors.blue,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.at,
                          size: 25,
                          color: Colors.white,
                        ),

                        SizedBox(
                          height: 9,
                        ),

                        Text("Pay UPI ID\nor number",
                        style: TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                    // color: Colors.blue,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.user,
                          size: 25,
                          color: Colors.white,
                        ),

                        SizedBox(
                          height: 9,
                        ),

                        Text("   Self\ntransfer",
                        style: TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                    // color: Colors.blue,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.receipt_long_rounded,
                          size: 25,
                          color: Colors.white,
                        ),

                        SizedBox(
                          height: 9,
                        ),

                        Text("Pay\nbills",
                        style: TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                    // color: Colors.blue,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.charging_station_outlined,
                          size: 25,
                          color: Colors.white,
                        ),

                        SizedBox(
                          height: 9,
                        ),

                        Text("  Mobile\nrecharge",
                        style: TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold
                        ),
                        )
                      ],
                    ),
                    // color: Colors.blue,
                  ),

                ],
                ),
              ),

              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black12,
                  ),
                  child: Text("UPI ID: ravi811822@oksbi",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  )
              ),

              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.3,
                    // color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("People",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                height: 270,
                // color: Colors.red,
                child: GridView.builder(physics: NeverScrollableScrollPhysics(),itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundImage: AssetImage(img[index]),
                      ),

                      SizedBox(
                        height: 6,
                      ),

                      Text(name[index],
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                      ),
                    ],
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: MediaQuery.of(context).size.height * 0.02,
                  crossAxisSpacing: MediaQuery.of(context).size.width * 0.02,
                ),
                  itemCount: name.length,
                ),
              ),

              Container(
                height: 50,
                width: double.infinity,
                // color: Colors.red,
                child:  Row(
                    children: [
                      SizedBox(
                        width:  MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        width:  MediaQuery.of(context).size.width * 0.30,
                        child: Text("Businesses",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                      ),

                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.20,
                      ),

                      Container(
                        width:  MediaQuery.of(context).size.width * 0.38,
                        child: ElevatedButton(
                            onPressed: () { },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF004A77),
                          ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.shopping_bag_outlined,
                                color: Colors.white,
                                ),

                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.02,
                                ),

                                Text("Explore",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                                ),
                              ],
                            ),
                        ),
                      ),
                      // Container(
                      //   width:  MediaQuery.of(context).size.height * 0.02,
                      // )
                    ],
                  ),
                ),


              Container(
                height: 135,
                width: double.infinity,
                // color: Colors.red,
                child: GridView.count(
                    crossAxisCount: 4,
                  physics: NeverScrollableScrollPhysics(),
                  mainAxisSpacing: MediaQuery.of(context).size.height * 0.35,
                  crossAxisSpacing: MediaQuery.of(context).size.width * 0.02,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 26,
                        backgroundColor: Colors.teal,
                          child: Text("C",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("D Mart",
                        style: TextStyle(
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                        ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.blue,
                          child: Text("B",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                          ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("BESCOM",
                          style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.deepOrange,
                          child: Text("S",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Soppy",
                          style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 26,
                          backgroundColor: Colors.blueGrey,
                          child: Text("R",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text("Raft",
                          style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.05,
                // color: Colors.red,
                child: Text("  Bills, recharges and more",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                ),
              ),

              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.17,
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.height * 0.07,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xFF004A77),
                            ),
                            child: Icon(Icons.charging_station_outlined,
                            size: 27,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),

                          Text("  Mobile\nrecharge",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.height * 0.07,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Color(0xFF004A77),
                            ),
                            child: Icon(Icons.tv,
                            size: 27,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),

                          Text("DTH/Cable\n      TV",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.height * 0.07,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Color(0xFF004A77),
                            ),
                            child: Icon(Icons.lightbulb_outlined,
                            size: 27,
                              color: Colors.white,
                            ),

                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),

                          Text("Electricity",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.height * 0.07,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Color(0xFF004A77),
                            ),
                            child: Center(
                              child: FaIcon(FontAwesomeIcons.carOn,
                              size: 24,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),

                          Text("  FASTag\n recharge",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ),

              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.09,
                // color: Colors.red,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black12,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: Colors.grey.shade600,
                        )
                      )
                    ),
                      onPressed: () {},
                      child: Text("See all",
                        style: TextStyle(
                          color: Colors.blue.shade200,
                          fontSize: 17
                        ),
                      ),
                  ),
                ),
              ),

              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.04,
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(left:15),
                  child: Text("Promotions",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  ),
                ),
              ),

              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.17,
                // color: Colors.red,
                child: GridView.count(crossAxisCount: 4,
                  physics: NeverScrollableScrollPhysics(),
                  // mainAxisSpacing: 15,
                  crossAxisSpacing:  MediaQuery.of(context).size.width * 0.001,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/images/reward.png"),
                        ),
                        SizedBox(
                          height:  MediaQuery.of(context).size.height * 0.005,
                        ),
                        Text("Rewards",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                        ),
                        )

                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/images/offer.jpg"),
                        ),
                        SizedBox(
                          height:  MediaQuery.of(context).size.height * 0.005,
                        ),
                        Text("Offers",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                          ),),

                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/images/referrals.jpg"),
                        ),
                        SizedBox(
                          height:  MediaQuery.of(context).size.height * 0.005,
                        ),
                        Text("Referrals",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/images/indi home.jpg"),
                        ),
                        SizedBox(
                          height:  MediaQuery.of(context).size.height * 0.005,
                        ),
                        Text("Indi-Home",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],

                ),
              ),

              Container(
                width: double.infinity,
                height:  MediaQuery.of(context).size.height * 0.25,
                // color: Colors.red,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.speed_rounded,
                      color: Colors.blue.shade200,
                      ),
                      title: Text("Check your CIBIL score for free",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                      ),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.blue.shade200,
                        size: 17,
                      ),
                    ),
                    SizedBox(
                      height:  MediaQuery.of(context).size.height * 0.005,
                    ),
                    ListTile(
                      leading: Icon(Icons.history,
                        color: Colors.blue.shade200,
                      ),
                      title: Text("Show transaction history",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                      ),),
                      trailing: Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.blue.shade200,
                        size: 17,
                      ),
                    ),
                    SizedBox(
                      height:  MediaQuery.of(context).size.height * 0.005,
                    ),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.buildingColumns,
                        color: Colors.blue.shade200,
                      ),
                      title: Text("Check bank balance",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17
                      ),),
                      trailing: Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.blue.shade200,
                        size: 17,
                      ),
                    ),
                  ],
                ),
              ),

              Container(

                width: double.infinity,
                height:  MediaQuery.of(context).size.height * 0.3,
                color: Colors.white24,
                child: Stack(
                  children: [
                    Padding(
                    padding: const EdgeInsets.only(left: 20, top: 25, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Invite you friends to Google Pay",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade100,
                        ),
                        ),
                        SizedBox(
                          height:  MediaQuery.of(context).size.height * 0.008,
                        ),
                        Text("Invite friends to Google Pay and get ₹201 when your friend sends their first payment. They get ₹21!",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey.shade100,
                          ),
                        ),
                        SizedBox(
                          height:  MediaQuery.of(context).size.height * 0.03,
                        ),
                        Row(
                          children: [
                            Text("Copy your code 631ds7m",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey.shade100,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.copy_rounded,
                            color: Colors.grey.shade100,
                              size: 19,
                            )
                          ],
                        ),

                        SizedBox(
                          height:  MediaQuery.of(context).size.height * 0.02,
                        ),

                        ElevatedButton(

                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white24,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    color: Colors.grey.shade400,
                                  )
                              )
                          ),
                          onPressed: () {},
                          child: Text("Invite",
                            style: TextStyle(
                                color: Colors.blue.shade200,
                                fontSize: 17
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                    Container(
                      width:  MediaQuery.of(context).size.width * 0.4,
                      height:  MediaQuery.of(context).size.height * 0.3,
                      // color: Colors.red,
                      margin: EdgeInsets.only(left: 250, top: 139),
                      child: Image.asset("assets/images/playkid.png"),
                    )
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: 80,
                // color: Colors.red,
                child: Center(
                  child: Column(
                    children: [
                      Text("Google Pay Home Interface Clone",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Made by Ravi Raj",
                        style: TextStyle(
                            color: Colors.blueGrey
                        ),
                      ),
                      Text("using Flutter+Dart",
                        style: TextStyle(
                            color: Colors.blueGrey
                        ),
                      ),
                    ],
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}










