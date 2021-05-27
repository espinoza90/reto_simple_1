import 'package:flutter/material.dart';
import 'package:reto_simple_1/widgets/circular_image_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/main_icon.png',
                  width: 70,
                ),
                Text(
                  'SALES TOP',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            ),
            Image.asset('assets/images/main_image.png'),
            Text(
              'Hello!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 10),
              child: Text(
                'Welcome to Sales TOP a Platform To Manage Real Estate Needs.',
                style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                    height: 1.8),
                textAlign: TextAlign.center,
              ),
            ),
            _sessionButtons(),
            SizedBox(height: 15),
            Text('Or via social media'),
            _socialMediaButtons(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _sessionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 30,
        ),
        Flexible(
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(), primary: Colors.blue),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Flexible(
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(
                      side: BorderSide(color: Colors.grey, width: 2)),
                  primary: Colors.white),
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
      ],
    );
  }

  Widget _socialMediaButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularImageButton(imageName: 'assets/images/facebook.png', width: 50),
        SizedBox(
          width: 10,
        ),
        CircularImageButton(
            imageName: 'assets/images/googleplus.png', width: 50),
        SizedBox(
          width: 10,
        ),
        CircularImageButton(imageName: 'assets/images/linkedin.png', width: 50)
      ],
    );
  }
}
