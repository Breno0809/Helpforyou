import 'package:flutter/material.dart';
//import 'resetPassword.dart';
import 'home.dart';
import 'cadastro.dart';


class Login extends StatefulWidget {
  
  @override
  _LoginState createState() => _LoginState();
  
}

class _LoginState extends State<Login> {
  
  String _text = '';
  //var email = Email('eloise.takami@gmail.com', '2Elo_takami2');
  bool visible=false;
  bool param=true;



  //teste

//   void _sendEmail() async {
//     bool result = await email.sendMessage('help for you recuperação de senha', 'anafurlan2004@gmail.com', 'help for recuperação de senha');
//     setState(() {
//       _text = result ? 'Enviado.' : 'Não enviado.';
//     });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(                
        width: double.infinity,
       decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage("lib/assets/borda2.png"),           
            fit: BoxFit.fill,
           ),
        ),
        
      padding: EdgeInsets.only(
        top:88,
        left:40,
        right:40,
      ),  
      child:ListView(
        children:<Widget>[
           SizedBox(
            width:200,
            height: 200,
            child: Image.asset("lib/assets/logo_sembranco.png"),
         ),
         SizedBox(
           height: 20,
         ),
          _montarTextField("Email", false, Icon(Icons.person,color: Color.fromRGBO(63, 71, 206, 1.0),)),
        
         SizedBox(
           height: 10,
           ),
           TextFormField(
             keyboardType: TextInputType.text,
             obscureText: param,
             decoration: InputDecoration(
               border: InputBorder.none,
               icon: Icon(Icons.lock,
                color: Color.fromRGBO(63, 71, 206, 1.0),
               ),
               suffixIcon: GestureDetector(
                 onTap: (){
                   setState(() {
                     param=!param;
                   });
                 },
                 child: Icon(Icons.visibility,
                  color:Color.fromRGBO(63, 71, 206, 1.0),
                 ),
               ),
               labelText: "Password"
             ),
           ),
          //_montarTextField("Senha", true,Icon(Icons.lock, color: Color.fromRGBO(63, 71, 206, 1.0))),
        
         Container(
           height: 40,
           alignment: Alignment.centerRight,
           child: FlatButton(
             child:Text(
               "Forgot password?",
               textAlign: TextAlign.right,               
             ),
             onPressed: (){
              //  _sendEmail();
               print(" boatao Forgot password");
             },
           ),
         ),
         SizedBox(
           height: 60,
         ),
         Container(
      height: 60,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.2, 1],
          colors: [
            Colors.cyan[700],
            Color.fromRGBO(110, 71, 190, 1.0),
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: SizedBox.expand(
        child: FlatButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _montarTextoBotao("                      Login"),
            ],
          ),
          onPressed: () {
            print("botao login");
              Navigator.push(
                context,
               MaterialPageRoute(builder: (context) => Home()),
              );
          },
        ),
      ),
    ),
   SizedBox(
            height: 30,
          ),
         
          Container(
            height: 40,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
             borderRadius: BorderRadius.all(
               Radius.circular(30),
             ),
            ),
           child: SizedBox.expand(
            child: FlatButton(
               child: Text(
                 "Register",
                 textAlign: TextAlign.center,
                 style: TextStyle(fontSize: 15),
               ),
               color: Colors.grey,
               onPressed: ()=>{
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Cadastro()),
                  ),
               },
            ),
           ),
          ),
        ],
        ),
      ),
    );
    
    
  }
}
Widget _montarTextoBotao(String textoBotao){
  return Text(
    textoBotao,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontSize: 20,
       ),
  );
}

Widget _montarTextField(String titulo, bool visible, Icon icon){
 
 return TextFormField(
    
      //autofocus: true
      obscureText: visible,
     
      keyboardType: TextInputType.emailAddress, //aparece o @
  
      decoration: InputDecoration(
        border: InputBorder.none,
        icon: icon,        
        labelText: titulo,
        labelStyle: TextStyle(
          color: Colors.black38,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
      ),
      style: TextStyle(
        fontSize: 20,
      ),
    );
}