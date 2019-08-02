import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  //สร้างตัวแปรสำหรับรหัสผ่าน
  bool showPW = true;
  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 24.0, right: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //start left
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/logo.png',
              height: 100.0,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'To Do',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Computer Science',
              style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
            SizedBox(
              height: 18.0,
            ),
            Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'ชื่อผู้ใช้',
                      hintText: 'UserName',
                    ),
                    validator: (data){
                      if(data.isEmpty){
                         return 'ป้อนชื่อผู้ใช้ด้วย';
                      }
                    },
                  ),
                  SizedBox(
                    height: 13.0,
                  ),
                  TextFormField(
                    validator: (data){
                      if(data.isEmpty){
                        return 'ป้อนรหัสผ่านด้วย';
                      }else if(data.length <= 6){
                        return 'รหัสผ่านต้องมากกว่า6ตัว';
                      }
                    },
                    obscureText: showPW,
                    decoration: InputDecoration(
                      labelText: 'รหัสผ่าน',
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          showPW ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            if (showPW == true) {
                              showPW = false;
                            } else {
                              showPW = true;
                            }
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 45.0,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      onPressed: () {
                        //todo
                      },
                      color: Colors.deepOrangeAccent,
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: (){
                            //todo กดปุ่มลืมรหัสผ่าน
                          },
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: (){
                            //todo กดปุ่มลงทะเบียน
                          },
                          child: Text(
                            'Register',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
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
