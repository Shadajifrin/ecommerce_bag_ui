import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Icon(
              Icons.shopping_bag,
              size: 100,
              color: Colors.red,
            ),
            SizedBox(height: 20),
            Text(
              'Login to Active Ecommerce',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Handle forgot password action
                        },
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        child: Text('Forgot Password'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  MaterialButton(
                    onPressed: () {
                      // Handle login action
                    },
                    color: Colors.amber,
                    minWidth: double.infinity,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Or create your account',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  MaterialButton(
                    onPressed: () {
                      // Handle signup navigation
                    },
                    color: Colors.red,
                    minWidth: double.infinity,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Text(
                        'Signup',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Login with',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  
                    children: [
                      Image.network(
                        "https://icons.iconarchive.com/icons/yootheme/social-bookmark/128/social-facebook-button-blue-icon.png",
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(width: 3,),
                      Image.network(
                          "https://icons.iconarchive.com/icons/sicons/basic-round-social/128/twitter-icon.png",width: 30,height: 30,),
                      
                        SizedBox(width: 3,),Image.network(
                          "https://icons.iconarchive.com/icons/papirus-team/papirus-apps/128/google-icon.png",width: 30,height: 30,),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
