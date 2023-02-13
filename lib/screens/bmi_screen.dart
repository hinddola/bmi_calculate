import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'calculated_screen.dart';

class BmiScreen extends StatefulWidget {
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  int weight = 60 ;
  int age = 28 ;
  double height = 180 ;
  int currentIndexx = 0;
  List <Widget> screens =[
    HomeScreen(),
    FavouriteScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title:  const Text(
          'BMI CALCULATOR',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
            children : const [
              UserAccountsDrawerHeader(
                  accountName: Text('Hind Sherif'),
                  accountEmail: Text('hinddola42@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2016/11/14/17/39/person-1824144_1280.png'
                    ),
                  )

              ),
            ]
        ),
      ),
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[900],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 150,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: (){
                              setState(() {
                              });
                            },
                            icon: const Icon(
                              Icons.male,
                              color: Colors.white,
                            ),
                            iconSize: 90,
                          ),
                          const Text(
                            'MALE',
                            style: TextStyle(
                              color: Colors.white30,
                              fontSize: 15
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[900],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 150,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: (){

                            },
                            icon: const Icon(
                              Icons.female,
                              color: Colors.white,
                            ),
                            iconSize: 90,
                          ),
                          const Text(
                            'FEMALE',
                            style: TextStyle(
                                color: Colors.white30,
                                fontSize: 15
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Text(
                          'HEIGHT',
                          style: TextStyle(
                            color: Colors.white30,
                            fontSize: 20
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$height',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            const Text(
                              'cm',
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Slider(
                            value: height,
                            onChanged: (v){
                              setState(() {
                                height = v.roundToDouble();
                              });
                            },
                          min: 130,
                          max: 200,
                        ),


                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 150,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'WEIGHT',
                            style: TextStyle(
                                color: Colors.white30,
                                fontSize: 20
                            ),
                          ),
                           Text(
                            '$weight',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white30,
                                radius: 20,
                                child: IconButton(
                                  // padding: EdgeInsets.zero,
                                  icon: const Icon(
                                      Icons.remove
                                  ),
                                  color: Colors.white,
                                  onPressed: () {
                                    setState(() {
                                      minWeightFun();
                                    });
                                  },
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white30,
                                radius: 20,
                                child: IconButton(
                                  // padding: EdgeInsets.zero,
                                  icon: const Icon(
                                      Icons.add
                                  ),
                                  color: Colors.white,
                                  onPressed: () {
                                    setState(() {
                                      addWeightFun();
                                    });
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 150,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'AGE',
                            style: TextStyle(
                                color: Colors.white30,
                                fontSize: 20
                            ),
                          ),
                           Text(
                            '$age',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white30,
                                radius: 20,
                                child: IconButton(
                                  // padding: EdgeInsets.zero,
                                  icon: const Icon(
                                      Icons.remove
                                  ),
                                  color: Colors.white,
                                  onPressed: () {
                                    setState(() {
                                      minAgeFun();
                                    });
                                  },
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white30,
                                radius: 20,
                                child: IconButton(
                                  // padding: EdgeInsets.zero,
                                  icon: const Icon(
                                      Icons.add
                                  ),
                                  color: Colors.white,
                                  onPressed: () {
                                    setState(() {
                                      addAgeFun();
                                    });
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> CalculatedScreen()));
                    },
                  minWidth: 900.0,
                  height: 45,
                   color: Colors.pink,
                  child: const Text(
                    'CALCULATE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar : BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: currentIndexx,
        selectedItemColor: Colors.lightBlueAccent,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled) , label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite) , label: 'Favourit'),
        ],
        onTap: (index){
          setState(() {
            currentIndexx = index;
          });
        },
      ),

    );
  }

  addWeightFun(){
    weight ++;
  }

  minWeightFun(){
    do{
      weight--;
    }while(weight<=0);

  }


  addAgeFun(){
    age++;
  }

  minAgeFun(){
    do{
      age--;
    }while(age<=0);

  }

}

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Text(
          'Home Screen'
        ),
      ),
    );
  }

}

class FavouriteScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Text(
          'Favourite Screen'
        ),
      ),
    );
  }

}

