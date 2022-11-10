// ignore_for_file: file_names
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Row(
        /// this is for dynamic data.
        children: List.generate(
          3,
          (index) => Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 30,
                  right: 15,
                ),
                height: 125,
                width: size.width * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(136, 151, 149, 149),
                      blurRadius: 5.0,
                      offset: Offset(0.0, 2),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 15),
                      child: Text(
                        "\$ 250",
                        style: TextStyle(
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: size.height * 0.005,
                right: size.width * 0.07,
                child: item(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget item() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromARGB(255, 220, 245, 255),
      ),
      child: Image.asset(
        "assets/images/watch.png",
        height: 60,
        width: 60,
      ),
    );
  }
}
