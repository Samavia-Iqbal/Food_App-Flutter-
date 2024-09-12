import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      drawer: const Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white,size: 30),
        title: const Text('Home',
        style: TextStyle(
          fontSize:25,
          color: Colors.white,
          fontWeight: FontWeight.w900
        ),),
        centerTitle: true,
        backgroundColor:Colors.pink.shade800,
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor:Colors.pink.shade600,
            child: const Icon(
              Icons.search,
              size: 24,
              color: Colors.white,
            ),
          ),
          Padding(
              padding:const EdgeInsets.symmetric(
                horizontal: 7,),
          child:    CircleAvatar(
              radius: 20,
              backgroundColor:Colors.pink.shade600,
          child: const Icon(
            Icons.shop,
            size: 24,
            color: Colors.white,
          ),))
        ],
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          child: Column(
            children: [
              ImageCon(),
              Padding(
                  padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                  child: TextRow("Herbs Seasoning","View All") ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:    Row(
                  children: [
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts()

                  ],
                ),
              ),
              Padding(
                  padding:const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                  child: TextRow("Fresh Fruits","View All") ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:    Row(
                  children: [
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                    singalProducts(),
                ]),
              ),
            ],
          ),
        ),
      )
    );
  }
  Widget singalProducts(){
    return  Container(
      height: 280,
      width: 200,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image.asset('assets/images/leaf.jpeg'),),

          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Fresh Basil',style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                        color: Colors.pink.shade700
                    ),),
                    const Text('50PKR/50 Gram',style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                        color: Colors.grey
                    ),),
                    Padding(padding: EdgeInsets.symmetric(
                        vertical: 5
                    ),
                      child:   Row(
                        children: [
                          Expanded(
                              child:  Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey)
                                ),
                                child: InkWell(onTap: (){}, child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('50 Gram',style: TextStyle(
                                        fontSize: 15
                                    ),),
                                    Icon(Icons.arrow_drop_down,
                                        size: 23,
                                        color: Colors.pink.shade700)
                                  ],
                                )),
                              ) ),
                          SizedBox(width: 10,),
                          Expanded(
                              child:  Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey)
                                ),
                                child: InkWell(onTap: (){},
                                    child:Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.remove,
                                            size: 20,
                                            color: Colors.pink.shade700),
                                        Text('1',
                                          style: TextStyle(
                                              color: Colors.pink.shade900,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Icon(Icons.add,
                                            size: 20,
                                            color: Colors.pink.shade700)
                                      ],
                                    )),
                              ) ),
                        ],
                      ),
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
  Widget TextRow(String text,String num){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w800,
              color: Colors.pink.shade700
          ),),
        Text(num,
          style: TextStyle(
              color: Colors.grey.shade900,
              fontWeight: FontWeight.w600,
              fontSize: 17
          ),)
      ],
    );
  }
  Widget ImageCon (){
    return Container(
        height: 165,
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image:AssetImage(
                  'assets/images/vegit.jpeg'
              )),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.red,
        ),
        child: Row(
          children: [
            Expanded(
                flex:2,
                child:Column(
                  children: [
                    Padding(
                        padding:const EdgeInsets.only(
                            right: 200,bottom: 10
                        ),
                        child:Container(
                            height: 40,
                            width: 90,
                            decoration:  BoxDecoration(
                                color: Colors.pink.shade600,
                                borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50)
                                )
                            ),
                            child:const Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                              ),
                              child:  Text(
                                'Vegi',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontStyle:FontStyle.italic,
                                  fontSize: 20,
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 10,
                                        offset: Offset(3, 3)
                                    )
                                  ]
                              ),
                              ),
                            )
                        )),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("30% Off",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            shadows: [
                              BoxShadow(
                                  color: Colors.green,
                                  blurRadius: 10,
                                  offset: Offset(3, 3)
                              )
                            ],
                            fontSize: 40,),),
                        Text("On all vegetables Products",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,),)
                      ],
                    )
                  ],
                ) ),
            Expanded(
                child:Container() ),
          ],
        )
    );
  }
}
