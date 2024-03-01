import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login (1).png'),fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20,top: 152),
              child: Text('Login \n',
                  style: TextStyle(color: Colors.white,fontSize: 43,fontFamily: 'JosefinSans',fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,top: 195),
              child: Text('Please sing in to continue',
                  style: TextStyle(fontSize: 17,
                      color: Colors.white,
                      fontFamily: 'JosefinSans')),
            ),
            Container(
              padding: EdgeInsets.only(left: 100,top: 310),
              child: Text('Login Here',style:
              TextStyle(fontSize: 30,fontFamily: 'JosefinSans',fontWeight: FontWeight.bold)),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,
                  right: 35,
                  left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Login Now',style: TextStyle(fontSize: 27,color: Color(0xff4c505b),fontWeight: FontWeight.bold,
                        fontFamily: 'Alkatra'),),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){
                              Navigator.pushNamed(context, 'welcome');
                            },
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'register');
                        },
                            child: Text('          Do you have and Account ?Sing up',style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Lora',
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4c505b)),)),
                      ],
                    ),
                    SizedBox(height: 0),
                    Row(
                      children: [
                        TextButton(onPressed: (){}, child: Text('                             Forgot Password !',style: TextStyle(

                            fontSize: 11,
                            fontFamily: 'Lora',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff4c505b)),))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
