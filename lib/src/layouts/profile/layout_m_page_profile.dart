import 'package:flutter/material.dart';
import 'package:mrtaparking/src/widgets/app_bar_home.dart';

class LayoutMPageProfile extends StatelessWidget {
  const LayoutMPageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                AppBarHome(),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "MRTA  PARKING",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24,
              right: 24,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white, // สีพื้นหลังของ Container
                borderRadius: BorderRadius.circular(12), // มุมโค้งมน
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // สีของเงา
                    spreadRadius: 1, // การกระจายของเงา
                    blurRadius: 2, // ความเบลอของเงา
                    offset: Offset(1, 1), // ระยะเงา (x, y)
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    // color: Colors.amber[600],
                    child: const Center(child: Text('Entry A')),
                  ),
                  Container(
                    height: 50,
                    // color: Colors.amber[500],
                    child: const Center(child: Text('Entry B')),
                  ),
                  Container(
                    height: 50,
                    // color: Colors.amber[100],
                    child: const Center(child: Text('Entry C')),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
