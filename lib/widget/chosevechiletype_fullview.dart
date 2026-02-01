import 'package:flutter/material.dart';
import 'package:taxi_app/constant/color.dart';

class ChosevechiletypeFullview extends StatefulWidget {
  const ChosevechiletypeFullview({super.key});

  @override
  State<ChosevechiletypeFullview> createState() =>
      _ChosevechiletypeFullviewState();
}

class _ChosevechiletypeFullviewState extends State<ChosevechiletypeFullview> {
  List<Map<String, dynamic>> vechile = [
    {
      'vechilename': 'Just go',
      'carname': 'assets/vechiles/car.png',
      'time': '2 min',
      'km': '1.8 km',
      'price': 25.00,
    },
    {
      'vechilename': 'Limousine',
      'carname': 'assets/vechiles/car2.png',
      'time': '4 min',
      'km': '2.1 km',
      'price': 35.00,
    },
    {
      'vechilename': 'Luxury',
      'carname': 'assets/vechiles/car3.png',
      'time': '6 min',
      'km': '3.0 km',
      'price': 55.00,
    },
    {
      'vechilename': 'ElectricCar',
      'carname': 'assets/vechiles/car4.png',
      'time': '6 min',
      'km': '3.0 km',
      'price': 55.00,
    },
    {
      'vechilename': 'Bike',
      'carname': 'assets/vechiles/car5.png',
      'time': '6 min',
      'km': '3.0 km',
      'price': 55.00,
    },
    {
      'vechilename': 'Taxi  4 seat',
      'carname': 'assets/vechiles/car6.png',
      'time': '6 min',
      'km': '3.0 km',
      'price': 55.00,
    },
    {
      'vechilename': 'Taxi  7 seat',
      'carname': 'assets/vechiles/car7.png',
      'time': '6 min',
      'km': '3.0 km',
      'price': 55.00,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: AppColor.color4,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Stack(
          children: [
            ListView.builder(
              itemCount: vechile.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 70,
                  color: index == 1 ? AppColor.primaryColor : AppColor.color4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 24,
                              width: 50,
                              child: Image.asset(
                                vechile[index]['carname'],
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  vechile[index]['vechilename'],
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: index == 1
                                        ? AppColor.color4
                                        : AppColor.color1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  vechile[index]['km'],
                                  style: TextStyle(
                                    color: index == 1
                                        ? AppColor.color4
                                        : AppColor.color1,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '\$${vechile[index]['price']}'.toString(),
                              style: TextStyle(
                                fontSize: 20,
                                color: index == 1
                                    ? AppColor.color4
                                    : AppColor.color1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              vechile[index]['time'],
                              style: TextStyle(
                                fontSize: 15,
                                color: index == 1
                                    ? AppColor.color4
                                    : AppColor.color1,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            Positioned(
              top: -30,
              left: 0,
              right: 0,
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_down, size: 80),

                  color: AppColor.color2,
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
