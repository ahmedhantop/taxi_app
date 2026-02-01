import 'package:flutter/material.dart';
import 'package:taxi_app/constant/color.dart';
import 'package:taxi_app/widget/custoumbutton.dart';

class Inputpromo extends StatefulWidget {
  const Inputpromo({super.key});

  @override
  State<Inputpromo> createState() => _InputpromoState();
}

class _InputpromoState extends State<Inputpromo> {
  bool isOpen = true;
  @override
  Widget build(BuildContext context) {
    return isOpen
        ? Container(
            height: 300,

            decoration: BoxDecoration(
              color: AppColor.containerpromo,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 50),

                      Text(
                        "Promo Code",
                        style: TextStyle(
                          color: AppColor.color1,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.close),
                        color: AppColor.iconclosecolor,
                        onPressed: () {
                          setState(() {
                            isOpen = !isOpen;
                          });
                        },
                      ),
                    ],
                  ),
                ),

                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.color4,

                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Input promo code",
                              isDense: true,
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 10,
                              ),
                              hintStyle: TextStyle(color: AppColor.color5),
                              prefixIcon: Icon(
                                Icons.confirmation_number,
                                color: AppColor.primaryColor,
                                size: 26,
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: AppColor.color6),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: AppColor.primaryColor,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 20),

                          Custoumbutton(
                            text: 'Apply',
                            width: double.infinity,
                            height: 50,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        : SizedBox();
  }
}
