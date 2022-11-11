import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'order_details_page.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFA800),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                title: Image.asset('assets/trilicious_logo.png'),
                centerTitle: true,
                background: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "ORDERS",
                        style: GoogleFonts.bebasNeue(
                            fontSize: 64, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 26, horizontal: 20),
                              child: Image.asset('assets/fire_logo.png',
                                  scale: 1, height: 40),
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          SizedBox(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Total Orders",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                const Text(
                                  '506',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Spacer(
                                  flex: 3,
                                ),
                                Text(
                                  'Today',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.75),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Text(
                                "Orders",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height:
                                            (MediaQuery.of(context).size.width /
                                                    3) -
                                                56,
                                        width:
                                            (MediaQuery.of(context).size.width /
                                                    3) -
                                                56,
                                        margin: const EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: const Color(0xffE7E7E7)),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.add_a_photo_outlined,
                                              size: 25,
                                            ),
                                            Text(
                                              "New",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                          left: ((MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      3) -
                                                  56) /
                                              2,
                                          right: ((MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      3) -
                                                  56) /
                                              2,
                                          child: Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                          ))
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height:
                                            (MediaQuery.of(context).size.width /
                                                    3) -
                                                56,
                                        width:
                                            (MediaQuery.of(context).size.width /
                                                    3) -
                                                56,
                                        margin: const EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: const Color(0xffE7E7E7)),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.add_a_photo_outlined,
                                              size: 25,
                                            ),
                                            Text(
                                              "New",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                          left: ((MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      3) -
                                                  56) /
                                              2,
                                          right: ((MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      3) -
                                                  56) /
                                              2,
                                          child: Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                          ))
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height:
                                            (MediaQuery.of(context).size.width /
                                                    3) -
                                                56,
                                        width:
                                            (MediaQuery.of(context).size.width /
                                                    3) -
                                                56,
                                        margin: const EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: const Color(0xffE7E7E7)),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.add_a_photo_outlined,
                                              size: 25,
                                            ),
                                            Text(
                                              "New",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                          left: ((MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      3) -
                                                  56) /
                                              2,
                                          right: ((MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      3) -
                                                  56) /
                                              2,
                                          child: Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Text(
                                "Payment Status",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height:
                                            (MediaQuery.of(context).size.width /
                                                    3) -
                                                56,
                                        width:
                                            (MediaQuery.of(context).size.width /
                                                    3) -
                                                56,
                                        margin: const EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: const Color(0xffE7E7E7)),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.add_a_photo_outlined,
                                              size: 25,
                                            ),
                                            Text(
                                              "New",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                          left: ((MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      3) -
                                                  56) /
                                              2,
                                          right: ((MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      3) -
                                                  56) /
                                              2,
                                          child: Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                          ))
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height:
                                            (MediaQuery.of(context).size.width /
                                                    3) -
                                                56,
                                        width:
                                            (MediaQuery.of(context).size.width /
                                                    3) -
                                                56,
                                        margin: const EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: const Color(0xffE7E7E7)),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.add_a_photo_outlined,
                                              size: 25,
                                            ),
                                            Text(
                                              "New",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                          left: ((MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      3) -
                                                  56) /
                                              2,
                                          right: ((MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      3) -
                                                  56) /
                                              2,
                                          child: Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                          ))
                                    ],
                                  ),
                                  Stack(
                                    children: [
                                      Container(
                                        height:
                                            (MediaQuery.of(context).size.width /
                                                    3) -
                                                56,
                                        width:
                                            (MediaQuery.of(context).size.width /
                                                    3) -
                                                56,
                                        margin: const EdgeInsets.all(12),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: const Color(0xffE7E7E7)),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.add_a_photo_outlined,
                                              size: 25,
                                            ),
                                            Text(
                                              "New",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                          left: ((MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      3) -
                                                  56) /
                                              2,
                                          right: ((MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      3) -
                                                  56) /
                                              2,
                                          child: Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              pinned: true,
              expandedHeight: 500,
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          primary: false,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, index) {
                            return orderItems();
                          }),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  orderItems() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const OrderDetailsPage()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xffEFEFEF),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: const [
                        Text(
                          "Shivam Agarwal",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "+91 6745345678",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(100)),
                    )
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffFFB200),
                      ),
                      child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          child: Text(
                            'Table #4',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff0179BC),
                      ),
                      child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          child: Text(
                            'Table #4',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                const Divider(
                  thickness: 2,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Text(
                      '₹500',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          child: Row(
                            children: const [
                              Icon(Icons.add_alarm, size: 16),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Pending',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          child: Row(
                            children: const [
                              Icon(Icons.add_alarm, size: 16),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Preparing',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
