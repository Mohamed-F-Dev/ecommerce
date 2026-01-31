// لسه مخلصتش ال responsive
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _MyAppState();
}
class _MyAppState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    double screenWidth =MediaQuery.of(context).size.width;
    double screenHeight =MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        padding: EdgeInsets.all(screenHeight * 0.05),
        child: LayoutBuilder(
          builder: (context,constrains) {
            var deviceType = getDeviceType(mediaQueryData);
            double localWidth = constrains.maxWidth;
            double localHeight = constrains.maxHeight;
            double boxWidth;
            double boxHeight;
            if (deviceType == DeviceType.mobile) {
              boxWidth = localWidth * 0.9;
              boxHeight = localHeight * 0.4;
            } else if (deviceType == DeviceType.tablet) {
              boxWidth = localWidth * 0.8;
              boxHeight = localHeight * 0.5;
            } else {
              boxWidth = localWidth * 0.7;
              boxHeight = localHeight * 0.6;
            }
            return Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(
                    vertical: 35,
                  ),
                  child: Text(
                    """Log into
your account""",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      height: 2,
                    ),
                  ),
                ),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email address",
                          labelStyle: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 14,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 14,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: TextButton(
                    onPressed: (){},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                MaterialButton(
                  onPressed: (){},
                  minWidth: 147,
                  height: 51,
                  padding: EdgeInsets.symmetric(
                    horizontal: 41,
                    vertical: 10,
                  ),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(26.5),),
                  color: Color(0xff2D201C),
                  textColor: Color(0xffFFFFFF),
                  child: Text(
                    "LOG IN",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "or log in with?",
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.2,
                        ),
                      ),
                      child: IconButton(
                        onPressed: (){},
                        iconSize: 23,
                        icon: Icon(Icons.apple),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.2,
                        ),
                      ),
                      child: IconButton(
                        onPressed: (){},
                        iconSize: 23,
                        icon: Icon(Icons.g_mobiledata),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.2,
                        ),
                      ),
                      child: IconButton(
                        onPressed: (){},
                        iconSize: 23,
                        icon: Icon(Icons.facebook_sharp),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 13,
                      ),
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 13,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
  DeviceType getDeviceType(MediaQueryData mediaQueryData)
  {
    Orientation orientation = mediaQueryData.orientation;
    double width = 0;
    if (orientation == Orientation.landscape) {width = mediaQueryData.size.height;}
    else {width = mediaQueryData.size.width;}
    if (width >= 950) {return DeviceType.desktop;}
    if (width >= 600) {return DeviceType.tablet;}
    return DeviceType.mobile;
  }
}
enum DeviceType { mobile, tablet, desktop}