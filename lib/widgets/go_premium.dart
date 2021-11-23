import 'package:flutter/material.dart';

class GoPremium extends StatelessWidget {
  const GoPremium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade800,
                    shape: BoxShape.circle
                  ),
                  child: const Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Go Premium',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Get unlimited access\nto all our features',
                      style: TextStyle(
                          color: Colors.blueGrey.shade200,
                          fontWeight: FontWeight.w400,
                          fontSize: 16
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 15,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade400,
                borderRadius: BorderRadius.circular(20)
              ),
              padding: const EdgeInsets.all(15),
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            )
          )
        ],
      ),
    );
  }
}
