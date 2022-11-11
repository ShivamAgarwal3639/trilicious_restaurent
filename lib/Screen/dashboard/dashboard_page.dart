import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
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
                        "DASHBOARD",
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
                                  "Total Revenue",
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
                                  '₹50,000',
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
                                  'In last 7 days',
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
                    ],
                  ),
                ),
              ),
              pinned: true,
              expandedHeight: 280,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: (MediaQuery.of(context).size.width/3)-24,
                            height: ((MediaQuery.of(context).size.width/3)-24)*1.65,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFA800),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    height: ((MediaQuery.of(context).size.width/3)-24)-12,
                                    width:  ((MediaQuery.of(context).size.width/3)-24)-12,
                                    decoration: BoxDecoration(
                                      color:  Colors.white,
                                      image: const DecorationImage(image: AssetImage('assets/multi_user.png')),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Manage staffs",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: (MediaQuery.of(context).size.width/3)-24,
                            height: ((MediaQuery.of(context).size.width/3)-24)*1.65,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFA800),

                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    height: ((MediaQuery.of(context).size.width/3)-24)-12,
                                    width:  ((MediaQuery.of(context).size.width/3)-24)-12,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(image: AssetImage('assets/knife.png')),

                                      color:  Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Edit Menu",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: (MediaQuery.of(context).size.width/3)-24,
                            height: ((MediaQuery.of(context).size.width/3)-24)*1.65,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFA800),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    height: ((MediaQuery.of(context).size.width/3)-24)-12,
                                    width:  ((MediaQuery.of(context).size.width/3)-24)-12,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(image: AssetImage('assets/qr_icon.png')),

                                      color:  Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Share",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),

                      Text(
                        "Top selling Items",
                        style: GoogleFonts.bebasNeue(
                            fontSize: 56, color:const Color(0xffFFA800)),
                      ),
                      const Text(
                        'In last 7 days',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          primary: false,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xffF1F1F1),
                                    borderRadius: BorderRadius.circular(8)),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
                                child: Row(
                                  children: [
                                    Container(
                                        height: 32,
                                        width: 32,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: Center(
                                          child: Text(
                                            "${index+1}",
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        )),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      height: 80,
                                      width: 80 * 1.35,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Pizza Mania",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "58 Sales",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
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
}
