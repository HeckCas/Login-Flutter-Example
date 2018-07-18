import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  String _welcomestr = "Inicia Sesión";

  _erase()
  {
    setState(()
    {
      _userController.clear();
      _passController.clear();
    });
  }



  _showWelcome()
  {
    setState(() {
      if (_userController.text.isNotEmpty && _passController.text.isNotEmpty)
          {
            _welcomestr = "Hola ${_userController.text}";
          }
          else
            {
              _welcomestr = "Existe un campo vacío";
            }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
     /*appBar: AppBar
     (
        title: Text("login"),
       backgroundColor: Colors.blueAccent,
     ),*/
     backgroundColor: Colors.greenAccent,
     body: Container
     (
       alignment: Alignment.topCenter,
       padding: EdgeInsets.all(20.0),
       child: ListView
       (
        children: <Widget>[
          Image.asset('images/halcon.png',
            height: 150.0,
            width: 150.0,
            color: Colors.white),

          //Form
          Container
          (
              height: 280.0,
              width: 385.0,
              color: Colors.white,
              padding: EdgeInsets.all(30.0),
              child: Column
              (
                children: <Widget>[
                  TextField(
                    controller: _userController,
                    decoration: InputDecoration(
                      hintText: "Username",
                      icon: Icon(Icons.perm_identity),

                    ),

                  ),

                  Padding(padding: EdgeInsets.all(20.0)),
                  

                  TextField(
                    controller: _passController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      icon: Icon(Icons.lock),
                      contentPadding: EdgeInsets.only(top: 20.0)
                    ),

                  ),

                  Padding(padding: EdgeInsets.all(20.0)),

                  Center(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin:EdgeInsets.only(left: 40.0),
                            child: RaisedButton(onPressed: () => _showWelcome(),
                            color: Colors.pink,
                            child: Text("LogIn",
                            style: TextStyle(
                              color: Colors.white,
                            )
                            ),
                            ),
                          ),

                          Padding(padding: EdgeInsets.all(20.0)),

                          Container(
                            margin:EdgeInsets.only(left: 40.0),
                            child: RaisedButton(onPressed: () => _erase(),
                              color: Colors.pink,
                              child: Text("Clear",
                              style: TextStyle(
                                color: Colors.white,

                              ),
                              ),
                            ),
                          ),


                        ],
                      )
                  ),
                ],
              ),
          ),

          Padding(padding: EdgeInsets.all(15.0)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_welcomestr,
              style:TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),)
            ],
          )


        ],
       )
     )
    );
  }
}
