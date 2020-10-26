import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Text('Login now and get',style: TextStyle(
                color: Colors.white,fontSize: 24
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.money,
                    color: Colors.green,
                    size: 30,
                  ),
                  Text('10 RUPEES BONUS CASH',style: TextStyle(
                      color: Colors.white,fontSize: 20
                  ),),
                  Icon(
                    Icons.money,
                    color: Colors.green,
                    size: 30,

                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.flash_on,
                    color: Colors.green,
                    size: 30,
                  ),
                  Text('20 NESTPLAY TOKEN',style: TextStyle(
                      color: Colors.white,fontSize: 20
                  ),),
                  Icon(
                    Icons.flash_on,
                    color: Colors.green,
                    size: 30,
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Login with your phone number',style: TextStyle(
                color: Colors.white,
                ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[100],
                    hintText: 'Mobile Number',
                    hintStyle: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                    prefixIcon: Icon(Icons.supervised_user_circle),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Center(
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.red[800],
                    padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    elevation: 8,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Text(
                  'DO YOU HAVE A CODE?',
                  style: TextStyle(color: Colors.white,decoration: TextDecoration.underline,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
