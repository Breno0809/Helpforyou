import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_application_1/audio/ripple_animation.dart';
fazerLigacao() async {
  const url = "tel:190";   
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(height: 267,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors:[
                  Colors.cyan[700],
                  Color.fromRGBO(110, 71, 190, 1.0),
                ],
              ),
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                  
                ),
                //Positioned(
                 // top: 100,
                  //left: 300,                  
                  Text("     Corra, abra e \n     reporte!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.breeSerif(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 48,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                        ),
                  ),
               // ),
              ],
            ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color:Colors.cyan[50],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [          
                         Row(
                          children: [
                          GestureDetector(
                            onTap: (){
                            print("botao policia");
                            Navigator.push(context, 
                            MaterialPageRoute(builder: fazerLigacao())
                           );
                           },
                           child: Container(
                             
                             height: 102.5,
                             width: 102.5,
                             decoration: new BoxDecoration(
                             borderRadius: BorderRadius.circular(20.0),
                             
                             color: Colors.white,
                               boxShadow: [
                                BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 10,
                                color: Color.fromRGBO(62,71,208,1.0),
                                ),
                              ],
                             ),
                             child: Column(children: [
                               Icon(
                               Icons.phone, 
                               color:Color.fromRGBO(62,71,208,1.0),
                               size:50,
                               ),
                               SizedBox( height:1),
                               Text(' Ligar para \n     policia',
                               style: GoogleFonts.breeSerif(
                               textStyle: Theme.of(context).textTheme.headline4,
                               fontSize: 15,
                               fontWeight: FontWeight.w900,
                               fontStyle: FontStyle.normal,
                               color: Colors.black
                               ),
                               ),
                             ],
                              
                             ),
                             ),
                           
                           ),
                           SizedBox(height:20, width: 20,),
                           GestureDetector(
                              onTap: (){
                            print("botao gravador de voz");
                             Navigator.push(
                                    context,
                                   MaterialPageRoute(builder: (context) => RipplesAnimation(size: 80.0,color: Color.fromRGBO(62,71,208,1.0),
                                   onPressed: (){},
                                   ),),
                             );
                           },
                           child:Container(
                             height: 102.5,
                             width: 102.5,
                             decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),                              
                              color: Colors.white,
                                boxShadow: [
                                BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 10,
                                color: Color.fromRGBO(62,71,208,1.0),
                                ),
                              ],
                             ),
                             child: Column(children: [
                               Icon(
                               Icons.keyboard_voice, 
                               color: Color.fromRGBO(62,71,208,1.0),
                               size:50,
                               ),
                               SizedBox( height:1),
                               Text(' Gravador de \n          voz ',
                               style: GoogleFonts.breeSerif(
                               textStyle: Theme.of(context).textTheme.headline4,
                               fontSize: 15,
                               fontWeight: FontWeight.w900,
                               fontStyle: FontStyle.normal,
                              color: Colors.black,
                               ),
                               ),
                             ],      
                           ),
                           ),
                           ),
                           SizedBox(height:20, width: 20,),
                           GestureDetector( 
                             onTap: (){
                            print("botao reporte");
                            
                           },
                           child:Container(
                             height: 102.5,
                             width: 102.5,
                             decoration: new BoxDecoration(
                             borderRadius: BorderRadius.circular(20.0),
                             
                             color: Colors.white,
                                boxShadow: [
                                BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 10,
                                color: Color.fromRGBO(62,71,208,1.0),
                                ),
                              ],
                             ),
                             child: Column(children: [
                               Icon(
                               Icons.report_problem, 
                               color: Color.fromRGBO(62,71,208,1.0),
                               size:50,
                               ),
                               SizedBox( height:5),
                               Text('Reporte',
                               style: GoogleFonts.breeSerif(
                               textStyle: Theme.of(context).textTheme.headline4,
                               fontSize: 15,
                               fontWeight: FontWeight.w900,
                               fontStyle: FontStyle.normal,
                               color: Colors.black
                               ),
                               ),
                             ],
                           ),
                           
                           ),
                           ),
                         ],
                       ),
                       SizedBox(height:15),
                       Text(
                         "    *S?? ligue para a pol??cia em caso de extrema emerg??ncia! ",
                          style: GoogleFonts.breeSerif(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize:  17,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(62,71,208,1.0),
                          ),
                       ),
                       SizedBox(height: 15, width: 15,),
                        SizedBox(height: 15, width: 15,),
                       Container(
                         height: 150,
                         width: 100000,
                         margin: const EdgeInsets.all(15.0),
                         padding: const EdgeInsets.all(3.0),
                         decoration: new BoxDecoration(
                           borderRadius: BorderRadius.circular(20.0),
                           border: new Border.all( color:Color.fromRGBO(63,71,206,1.0), width:4),
                           color: Colors.cyan[50],
                           boxShadow: [
                                BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 10,
                                color: Color.fromRGBO(62,71,208,1.0),
                                ),
                              ],
                         ),
                       child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                       Text(
                         "       Contatos de emerg??ncia ",
                          style: GoogleFonts.breeSerif(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize:  23,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(63,71,206,1.0),
                          ),
                       ),
                       
                       Text(
                         "     Adicione algu??m para enviar pedidos de socorro.",
                         style: GoogleFonts.breeSerif(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize:  13,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.normal,
                          color: Color.fromRGBO(63,71,206,1.0),
                          )
                       ),
                       SizedBox(height: 10, width: 20,),
                       GestureDetector( 
                             onTap: (){
                            print("botao adicionar");
                           },
                           child:Center(
                           child:Container(
                             height: 45,
                             width: 100,
                             margin: const EdgeInsets.all(15.0),
                             padding: const EdgeInsets.all(3.0),
                             alignment: Alignment.topCenter,
                             decoration: new BoxDecoration(
                             borderRadius: BorderRadius.circular(10.0),
                             border: new Border.all( color:Color.fromRGBO(63,71,206,1.0), width:4),
                             color: Colors.white,
                             boxShadow: [
                                BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 10,
                                color: Color.fromRGBO(62,71,208,1.0),
                                ),
                              ],
                            ),
                             child: Column(children: [
                               SizedBox( height:5),
                               Text('Adicionar',
                               style: GoogleFonts.breeSerif(
                               textStyle: Theme.of(context).textTheme.headline4,
                               fontSize: 15,
                               fontWeight: FontWeight.w900,
                               fontStyle: FontStyle.normal,
                               color: Colors.black
                               ),
                               ),
                             ],
                           ),
                           
                           ),
                           ),
                           ),
                        
                       ],
                       ),
                       ),
                ],
              ),
           ),
            
        ),
        ],      
    ),    
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}