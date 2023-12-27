import 'package:flutter/material.dart';

class BgPage extends StatelessWidget {
  const BgPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.4,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(20),
                color: Colors.blue,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        SizedBox(
                          width: MediaQuery.of(context).size.width*0.4,
                          child: Row(
                            children: const [
                              Icon(Icons.menu,color: Colors.white,),
                              SizedBox(width: 30,),
                              Text("Dashboard",style: TextStyle(color: Colors.white,fontSize: 20),),
                            ],
                          ),
                        ),
                        Icon(Icons.notifications,color: Colors.white,),

                      ],
                    ),
                    SizedBox(height: 100,),
                    Text("Welcome to\nITruck Dispatch",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),)
                  ],
                ),

              ),
              Positioned(
                top: MediaQuery.of(context).size.height*0.25,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.5,
                    padding: const EdgeInsets.all(16.0),
                    child: GridView.count(
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      crossAxisCount: 2, // Number of columns
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          color: Colors.white,
                          child: const Center(
                            child: Text(
                              'Container 1',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          color: Colors.green,
                          child: Center(
                            child: Text(
                              'Container 2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          color: Colors.red,
                          child: Center(
                            child: Text(
                              'Container 3',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          color: Colors.yellow,
                          child: Center(
                            child: Text(
                              'Container 4',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
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
