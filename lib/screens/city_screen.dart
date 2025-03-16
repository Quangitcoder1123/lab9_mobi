import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.6), // Làm mờ nền để dễ đọc nội dung
              BlendMode.darken,
            ),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 30.0,
                    color: Colors.white, // Làm nổi bật icon trên nền tối
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: kTextFieldInputDecoration.copyWith(
                    fillColor: Colors.white.withOpacity(0.2), // Làm mờ hộp nhập liệu
                    filled: true,
                    hintStyle: TextStyle(color: Colors.white70),
                  ),
                  onChanged: (value) {
                    cityName = value;
                  },
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context, cityName);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blueAccent, // Nút màu xanh nổi bật
                    padding: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Text(
                    'Get Weather',
                    style: kButtonTextStyle.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
