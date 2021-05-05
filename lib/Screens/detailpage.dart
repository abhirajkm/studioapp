import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';


var serviceList = [
  {'title': ' Photoshoot', 'duration': 45, 'price': 3000},
  {'title': 'Wedding Photography', 'duration': 180, 'price': 7500},
  {'title': 'Birthday Photoshoot', 'duration': 120, 'price': 5000},
  {'title': 'Fashion Photography', 'duration':60, 'price': 4500},
  {'title': 'Sports Photography', 'duration':120, 'price': 3800},

];

class DetailScreen extends StatelessWidget {
  final stylist;

  DetailScreen(this.stylist);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height / 3 + 20,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(
                        'assets/detail_bg.png',
                        fit: BoxFit.fill,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.purple.withOpacity(0.1),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 20,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3 - 30,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 130,
                        ),
                        Text(
                          'Service List',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ServiceTile(serviceList[0]),
                        ServiceTile(serviceList[1]),
                        ServiceTile(serviceList[2]),
                        ServiceTile(serviceList[3]),


                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3 - 120,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 3 - 20,
                        height: MediaQuery.of(context).size.height / 6 + 20,
                        decoration: BoxDecoration(
                          color: stylist['bgColor'],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(


                          fit: StackFit.expand,
                          children: <Widget>[
                            Positioned(

                              top:55,
                              right: 3,
                              child: Image.asset(
                                stylist['imgUrl'],
                                scale: 1.7,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 25,

                              child: Text(
                                stylist['StudioName'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              stylist['place'],
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  size: 16,
                                  color: Color(0xffFF8573),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  stylist['rating'],
                                  style: TextStyle(
                                    color: Color(0xffFF8573),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '(${stylist['rateAmount']})',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: -20,
                
                top: MediaQuery.of(context).size.height / 3.5 - 15,
                child: MaterialButton(
                  onPressed: () {},
                  padding: EdgeInsets.all(10),
                  shape: CircleBorder(),
                  color: Colors.white,
                  child: Icon(OMIcons.favoriteBorder),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceTile extends StatelessWidget {
  final service;
  ServiceTile(this.service);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 40,
                  child: Text(
                    service['title'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '${service['duration']} Min',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Text(
              '\₹${service['price']}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: Color(0xffFF8573),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'Book',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
