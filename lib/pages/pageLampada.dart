import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageLampada extends StatefulWidget {
  @override
  _PageLampadaState createState() => _PageLampadaState();
}

class _PageLampadaState extends State<PageLampada> {
  String _name;
  String _email;
  String _password;
  String _rg;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Image(
         image: AssetImage('lib/assets/h_sembranco.png'),
         width: 35.0,
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right:20.0),
            child: GestureDetector( 
              onTap: (){
                print("notificação");
              },
              child: Icon(
                Icons.check,
                color: Color.fromRGBO(63,71,206,1.0),
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Container(                
      width: double.infinity, 
      padding: EdgeInsets.only(
        top:15,
        left:40,
        right:40, 
      ),  
      child: ListView(
        children: [
          SizedBox(height: 5,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar( 
                radius:65,
                backgroundColor: Color.fromRGBO(62,71,208,1.0),
                child:  Text('A',
                style: GoogleFonts.breeSerif(
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 50,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ), 
                ),
              )
            ]
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height:5),
                TextFormField(
                  cursorColor:Color.fromRGBO(62,71,208,1.0),
                  initialValue: _name,
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText:'Name:',
                    labelStyle: TextStyle(
                      color:Color.fromRGBO(62,71,208,1.0),
                      fontWeight: FontWeight.w700,
                      fontSize:18,
                    ),
                  ),
                  validator: (input) => input.trim().length < 2
                      ? 'please enter valid name'
                      : null,
                  style: TextStyle(fontSize:18),
                  onSaved: (value){
                    _name = value;
                  },
                ),
                SizedBox(height:10),
                TextFormField(
                  cursorColor:Color.fromRGBO(62,71,208,1.0),
                  keyboardType: TextInputType.emailAddress,
                  initialValue: _email,
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText:'E-mail:',
                    labelStyle: TextStyle(
                      color:Color.fromRGBO(62,71,208,1.0),
                      fontWeight: FontWeight.w700,
                      fontSize:18,
                    ),
                  ),
                  style: TextStyle(fontSize:18),
                  onSaved: (value){
                    _email = value;
                  },
                ),
                SizedBox(height:10),
                TextFormField(
                  cursorColor:Color.fromRGBO(62,71,208,1.0),
                  initialValue: _password,
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText:'Password:',
                    labelStyle: TextStyle(
                      color:Color.fromRGBO(62,71,208,1.0),
                      fontWeight: FontWeight.w700,
                      fontSize:18,
                    ),
                  ),
                  style: TextStyle(fontSize:18),
                  onSaved: (value){
                    _password = value;
                  },
                ),
                SizedBox(height:10),
                TextFormField(
                  cursorColor:Color.fromRGBO(62,71,208,1.0),
                  initialValue: _rg,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText:'RG:',
                    labelStyle: TextStyle(
                      color:Color.fromRGBO(62,71,208,1.0),
                      fontWeight: FontWeight.w700,
                      fontSize:18,
                    ),
                  ),
                  style: TextStyle(fontSize:18),
                  onSaved: (value){
                    _rg = value;
                  },
                ),
                SizedBox(height: 30,),
                Container( 
                height: 100,
                width: 285,
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: new Border.all( color:Color.fromRGBO(63,71,206,1.0), width:4),
                color: Colors.cyan[100],
                boxShadow: [
                BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 10,
                color: Colors.black,
               ),
              ],
            ),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
             Text(
              "  Para saber mais sobre os \n tipos de violências entre no \n                    nosso site",
              style: GoogleFonts.breeSerif(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize:  20,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.normal,
              color: Color.fromRGBO(63,71,206,1.0),
             ),
            ),
            ]
           )
          ),
          ],
          ) 
          )
      ],
      ),
      )
    );
  }
}