import 'package:flutter/material.dart';

class HomePageDetails extends StatelessWidget {
  const HomePageDetails({super.key});
  final String image = "assets/images/hotel1.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [

          Container(
            foregroundDecoration: const BoxDecoration(
              color: Colors.black26
            ),
              height: 400,
              width: 500,
              child: Image.asset(image,fit: BoxFit.cover,)),
          SingleChildScrollView(
            padding: const EdgeInsets.only(
              top: 16.0,
              bottom: 20.0
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
    horizontal: 16.0
    ),
                  child: Text("Lux Hotel\n Tornato",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 28
                  ),),
                ),
                Row(
                  children: [
                    const SizedBox(width: 16.0,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                        horizontal: 16.0
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Text("8.5/85 reviews",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0
                      ),),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: (){},
                        icon: const Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        )),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(32.0),
                  color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          color: Colors.purple,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.purple,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.purple,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.purple,
                                        ),
                                        Icon(
                                          Icons.star_border,
                                          color: Colors.purple,
                                        ),
                                      ],
                                    ),
                                    const Text.rich(TextSpan(children:[
                                      WidgetSpan(child: Icon(
                                        Icons.location_on,size: 16.0,color: Colors.grey,
                                      ),
                                      ),
                                      TextSpan(
                                        text:"8km from centrum",
                                      ),
                                    ]
                                    ),
                                      style: TextStyle(
                                        color: Colors.grey,fontSize: 12.0
                                      ),
                                    ),
                                  ],
                                ),
                            ),
                            Column(
                              children: const [
                                Text("₹ 2000",
                                style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                                ),),
                                Text("per night",
                                style: TextStyle(
                                  color: Colors.grey
                                ),)
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),

                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            child: const Text("Book Now",
                            style: TextStyle(
                              color: Colors.white
                            ),),
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)
                              ),
                              backgroundColor: Colors.purple,
                              padding: const EdgeInsets.symmetric(
                                vertical: 16.0,
                                horizontal: 32.0
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("Description".toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14.0
                        ),),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text("Lavish bathrooms with upscale"
                            " features such as heated floors and soaking tubs. High-end, lush linens and towels. Deluxe pillows and mattresses so your sleeping hours are as blissful as your waking ones. Beautiful views in every direction "
                            "– inside and out.",textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300
                        ),),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text("Lavish bathrooms with upscale"
                            " features such as heated floors and soaking tubs. High-end, lush linens and towels. Deluxe pillows and mattresses so your sleeping hours are as blissful as your waking ones. Beautiful views in every direction "
                            "– inside and out.",textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w300
                          ),),

                      ],
                ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: const Icon(Icons.menu),
              centerTitle: true,
              title: const Text("Detail",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.normal
              ),),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: BottomNavigationBar(
              backgroundColor: Colors.white54,
                elevation: 0,
                selectedItemColor: Colors.black,
                items:
            [
              const BottomNavigationBarItem(
                icon: Icon(Icons.search),label: ("Search")),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),label: ("Favorite")),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.settings),label: ("Settings"))
            ] ),
          )
        ],
      )
    );
  }
}
