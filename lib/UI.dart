import 'package:flutter/material.dart';

class UI extends StatefulWidget {
  const UI({Key? key}) : super(key: key);

  @override
  State<UI> createState() => _UIState();
}

class _UIState extends State<UI> {
  void container() {
    Container(
      height: 80,
      width: 60,
      color: Colors.black,
    );
  }


  Widget dashboard(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 15),
      child: Column(
        children: [
          SizedBox(
              height: 30,
              child: Icon(
                icon,
                size: 20,
                color: Colors.black,
              )),
          SizedBox(
            height: 30,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '   Dubai Airport-DXB',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    "     Dubai. United Arab Emirates",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Stack(
                children: [
                  Container(
                    height: 300,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage("assets/image/image1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 140, left: 10),
                    child: Container(
                      height: 140,
                      width: 310,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Wrap(
                        children: [
                          Row(
                            children: [
                              dashboard(
                                Icons.cloudy_snowing,
                                "19 C",
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              dashboard(Icons.calendar_today_rounded, "30 Jan"),
                              SizedBox(
                                width: 15,
                              ),
                              dashboard(
                                  Icons.access_time_filled_rounded, "8:45pm"),
                              SizedBox(
                                width: 15,
                              ),
                              dashboard(Icons.money, "AED"),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Cloudy",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  "Mon",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                SizedBox(
                                  width: 55,
                                ),
                                Text(
                                  "GMT+4",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  '1\$=3.67AED',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          /* Row(
                            children: [
                              TextButton(onPressed: (){},style: TextStyle(color: Colors.black), child: Row(children: [
                                Icon(Icons.directions),
                                Text("Directions"),

                              ],)),
                            ],
                          )*/
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 150,
                                  decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.directions,
                                          color: Colors.blue,
                                        ),
                                        Text("Get directions"),
                                      ],
                                    ),
                                  ),
                                ),
                                Text("|"),
                                Container(
                                  height: 40,
                                  width: 145,
                                  decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 8),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.call,
                                          color: Colors.blue,
                                        ),
                                        SizedBox(width: 8),
                                        Text("Call Airport"),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Add functionality for the Transport button
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Transport',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Add functionality for the Transport button
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        backgroundColor: Colors.grey.shade100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Terminal',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Add functionality for the Transport button
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        backgroundColor: Colors.grey.shade100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Forex',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Add functionality for the Transport button
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        backgroundColor: Colors.grey.shade100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Contact Info',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 230,
                  width: 310,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black12,
                      width: 2,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 20),
                        child: Text("Taxi Service",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 60),
                        child: Row(
                          children: [
                            /*  Container(
                            height: 70,
                            width: 90,

                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.black12,
                                width: 1
                              )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: AssetImage("assets/image/uber.jpg"),),
                                Text("\$\$\$\$\$\$",style: TextStyle(color: Colors.grey),)
                              ],
                            ),
                          )*/
                            Container(
                                height: 70,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: Colors
                                        .black12, // Adjust the color of the border
                                    width: 1,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "assets/image/uber1.jpg"),
                                          height: 50,
                                          width: 60,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, top: 40),
                                          child: Text(
                                            "\$\$\$\$\$\$",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 70,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: Colors.black12, width: 1)),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: Image(
                                      image:
                                          AssetImage("assets/image/careem.jpg"),
                                      height: 40,
                                      width: 60,
                                    ),
                                  ),

                                  Text(
                                    "\$\$\$\$\$\$",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 70,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: Colors.black12, width: 1)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Image(
                                      image: AssetImage("assets/image/yango.jpg"),
                                      height: 20,
                                      width: 60,
                                    ),
                                  ),
                                  SizedBox(height: 8,),
                                  Text(
                                    "\$\$\$\$\$\$",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, top: 135),
                        child: Container(
                          height: 70,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(color: Colors.black12, width: 1)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Image(
                                    image:
                                        AssetImage("assets/image/blacklane.jpg")),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "\$\$\$\$\$\$",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 150,
                  width: 310,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black12,
                      width: 2,
                    ),
                  ),child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: Text("Public Transport",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60,left: 15),
                      child: Column(
                        children: [
                          Row(children: [
                            Icon(Icons.directions_train,color: Colors.black,),
                            SizedBox(width: 15,),
                            Text("Metro",style: TextStyle(fontSize: 20),),
                            SizedBox(width: 100,),
                            Text("6am-10pm",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.grey),),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_forward,color: Colors.black,size: 15,),
                          ],),
                          SizedBox(height: 20,),
                          Row(children: [
                            Icon(Icons.directions_bus,color: Colors.black,),
                            SizedBox(width: 15,),
                            Text("Bus",style: TextStyle(fontSize: 20),),
                            SizedBox(width: 100,),
                            Text("Available 24hrs",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.grey),),
                            SizedBox(width: 10,),
                            Icon(Icons.arrow_forward,color: Colors.black,size: 15,),
                          ],)
                        ],
                      )
                    ),
                  ],
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 220,
                  width: 310,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black12,
                      width: 2,
                    ),
                  ),child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: Text("Self Parking",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                    ),
                    Column(
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 60),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.black
                              ),child: Center(child: Text("T1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.black12,width: 1),
                                  color: Colors.grey.shade300

                              ),child: Center(child: Text("T2",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                            ),
                          ],
                        ),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 15),
                          child: Row(children: [
                            Icon(Icons.motorcycle_sharp,color: Colors.black,size: 25,),
                            SizedBox(width: 10,),
                            Text("Two Wheeler",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.bold),),
                            SizedBox(width: 80,),
                            Text("AED 50 / Day",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                            Icon(Icons.error_outline,color: Colors.grey,size: 13,)
                          ],),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 10),
                          child: Row(children: [
                            Icon(Icons.car_rental,color: Colors.black,size: 25,),
                            SizedBox(width: 10,),
                            Text("Car Parking",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.bold),),
                            SizedBox(width: 80,),
                            Text("AED 100 / Day",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                            Icon(Icons.error_outline,color: Colors.grey,size: 13,)
                          ],),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 10),
                          child: Row(children: [
                            Icon(Icons.electric_car,color: Colors.black,size: 25,),
                            SizedBox(width: 10,),
                            Text("E-Car Parking",style: TextStyle(fontSize: 12,color: Colors.grey,fontWeight: FontWeight.bold),),
                            SizedBox(width: 70,),
                            Text("AED 100 / Day",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                            Icon(Icons.error_outline,color: Colors.grey,size: 13,)
                          ],),
                        ),
                    ],
                    ),
                  ],
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20),
                child: Container(
                  height: 210,
                  width: 310,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black12,
                      width: 2,
                    ),
                  ),child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: Text("Terminal Map",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                    ),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 60),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.black
                              ),child: Center(child: Text("T1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.black12,width: 1),
                                  color: Colors.grey.shade300

                              ),child: Center(child: Text("T2",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.black12,width: 1),
                                  color: Colors.grey.shade300

                              ),child: Center(child: Text("T3",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                            ),
                          ],
                        ),
                      ),SizedBox(height: 10,),
                      Container(
                        height: 100,
                        width: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                          image: DecorationImage(image: AssetImage("assets/image/map.jpg",),fit: BoxFit.fill),
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: ElevatedButton(onPressed: (){}, child: Text("View"),style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                              ),),
                            )
                          ],
                        ),
                      )
                      
                    ],),
                    
                  ],
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20),
                child: Container(
                  height: 260,
                  width: 310,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black12,
                      width: 2,
                    ),
                  ),child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: Text("Foreign exchange",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 2,top: 60),
                          child: ListTile(
                            title: Text("Travelex",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                            subtitle: Column(

                              children: [
                                SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text("Terminal-3",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Airside Dept Downtown,Concurse B,",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Terminal 3,Beside Winston Smoking room.",style: TextStyle(color: Colors.grey,fontSize: 10,fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ],),
                            trailing: Icon(Icons.arrow_drop_up_outlined,color: Colors.black,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2,),
                          child: ListTile(
                            title: Text("Al Ansari Exchange",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),

                            trailing: Icon(Icons.arrow_drop_down_outlined,color: Colors.black,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2,),
                          child: ListTile(
                            title: Text("Emirate NBD",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),

                            trailing: Icon(Icons.arrow_drop_down_outlined,color: Colors.black,),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 300,
                  width: 310,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black12,
                      width: 2,
                    ),
                  ),child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Text("Contact Airport",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 2,top: 60),
                        child: ListTile(
                          title: Text("Police",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                          trailing: ElevatedButton(onPressed: (){},child: Icon(Icons.call,color: Colors.black,),style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          ),)
                        ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2,),
                        child: ListTile(
                          title: Text("Lost and Found",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                          trailing: ElevatedButton(onPressed: (){},child: Icon(Icons.call,color: Colors.black,),style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          ),)
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2,),
                        child: ListTile(
                          title: Text("Transport",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                          trailing: ElevatedButton(onPressed: (){},child: Icon(Icons.call,color: Colors.black,),style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          ),)
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 2,),
                          child: ListTile(
                            title: Text("Head office",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                            trailing: ElevatedButton(onPressed: (){},child: Icon(Icons.call,color: Colors.black,),style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            ),)
                      ),
                    ],
                  ),
                ],),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,top: 20),
                child:Row(children: [
                  Container(
                    width: 150,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      child: Row(
                        children: [
                          Icon(Icons.directions,color: Colors.white,),

                          Text(
                            " Get direction",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 140,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      child: Row(
                        children: [
                          Icon(Icons.call,color: Colors.white,),

                          Text(
                            " Call Airport",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
