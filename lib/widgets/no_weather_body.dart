import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'There Is No Weather Start ',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          ),
          Text(
            'Searching Now! ',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
