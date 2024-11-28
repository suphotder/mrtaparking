import 'package:flutter/material.dart';
import 'package:mrtaparking/src/widgets/bottons/button_square_white.dart';

class MenuParkingService extends StatelessWidget {
  const MenuParkingService({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Parking service",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              Expanded(
                child: ButtonSquareWhite(
                  icon: SizedBox(
                    width: 48,
                    height: 48,
                    child: Icon(
                      Icons.qr_code_scanner_rounded,
                      color: Theme.of(context).primaryColor,
                      size: 42,
                    ),
                  ),
                  text: Text(
                    "QR Code",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  textStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                child: ButtonSquareWhite(
                  icon: SizedBox(
                    width: 48,
                    height: 48,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 6,
                        bottom: 6,
                      ),
                      child: Image.asset(
                        "assets/icons/motorcycle.png",
                      ),
                    ),
                  ),
                  text: Text(
                    "Motorcycle",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  textStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
