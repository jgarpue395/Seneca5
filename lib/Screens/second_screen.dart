import 'package:flutter/material.dart';
import 'package:seneca/Screens/alumnos_screens.dart';
import 'package:seneca/Screens/screens.dart';

class SecondScreen extends StatelessWidget {
  final String user;

  const SecondScreen({Key? key, required this.user}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      backgroundColor: Colors.white, 
      body: Stack(
        children: [
          Container(
            color: Colors.blue[800],
            width: double.infinity,
            height: 200,
            child: const Image (
              image: AssetImage("assets/iseneca.png"),
            ),
          ),
      
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 150),
              width: 360,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row (
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(user),

                        IconButton(
                          icon: const Icon(Icons.people), 
                          onPressed: () { 
                            Navigator.pop(context);
                          },
                        )
                      ]
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const[
                        Text("C.E.I.P. Maestro Eduardo Lobillo", style: TextStyle(color: Colors.blue,)),
            
                        SizedBox(height: 5),
            
                        Text("Perfil Profesorado", style: TextStyle(color: Colors.blue)),
                      ],
                    ),
                  ),

                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                    ),
                    height: 75,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent)),
                          onPressed: () {
                            
                          }, 
        
                          child: SizedBox(
                            height: 50,
                            width: 130,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.alarm, color: Colors.white),
                                Text("  Avisos", style: TextStyle(color: Colors.white, fontSize: 12)),
                              ],
                            ),
                          )
                        ),

                        const VerticalDivider(color: Colors.white,),

                        ElevatedButton(
                          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent)),
                          onPressed: () {}, 

                          child: SizedBox(
                            height: 50,
                            width: 130,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.account_balance_wallet, color: Colors.white),
                                Text(" Bandeja de firmas", style: TextStyle(color: Colors.white, fontSize: 12)),
                              ],
                            ),
                          )
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 220, left: 15),
              child: SizedBox(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 80,
                              height: 200,
                              child: GestureDetector(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const AlumnadoScreen())),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Image(
                                      image: AssetImage("assets/sombrero.png"),
                                      width: 75,
                                    ),
                              
                                    Text("Alumndado del centro", textAlign: TextAlign.center)
                                  ],
                                ),
                              ),
                            ),
                
                            VerticalDivider(width: 60, color: Colors.grey[500]),
                
                            GestureDetector(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const PersonalScreen())),
                              child: SizedBox(
                                width: 80,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:const [
                                    Image(
                                      image: AssetImage("assets/profesor.png"),
                                      width: 65,
                                    ),
                            
                                    Text("Personal del centro", textAlign: TextAlign.center)
                                  ],
                                ),
                              ),
                            ),

                            VerticalDivider(width: 60, color: Colors.grey[500]),
                
                            SizedBox(
                              width: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Image(
                                    image: AssetImage("assets/covid.png"),
                                    width: 45,
                                  ),

                                  Text("Información covid", textAlign: TextAlign.center,)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Divider(color: Colors.grey[500]),

                    SizedBox(
                      height: 200,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 80,
                            height: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Image(
                                  image: AssetImage("assets/campana.png"),
                                  width: 45,
                                ),

                                Text("Tablón de anucios", textAlign: TextAlign.center)
                              ],
                            ),
                          ),
                
                          VerticalDivider(width: 60, color: Colors.grey[500]),
                
                          SizedBox(
                            width: 80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:const [
                                Image(
                                  image: AssetImage("assets/calendario.png"),
                                  width: 65,
                                ),

                                Text("Personal del centro", textAlign: TextAlign.center)
                              ],
                            ),
                          ),

                          VerticalDivider(width: 60, color: Colors.grey[500]),
                        ],
                      ),
                    )
                  ]
                ),
              ),
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 60,
                decoration: const BoxDecoration (
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow (
                      color: Colors.black,
                      offset: Offset(0.0, 12.0),
                      blurRadius: 20.0,
                    )
                  ]
                ),
                
                child: Padding(
                  padding: const EdgeInsets.only(top: 7.5, left: 25, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: const  [
                          Icon(Icons.home_filled, size: 30),
                          Text("Inicio")
                        ],
                      ),
                  
                      const SizedBox(width: 40),
                  
                      Column(
                        children: const  [
                          Icon(Icons.watch_later_outlined, size: 30),
                          Text("Agenda")
                        ],
                      ),
                  
                      const SizedBox(width: 35),
                  
                      Column(
                        children: const  [
                          Icon(Icons.messenger_outline_sharp, size: 30,),
                          Text("Comunicaciones")
                        ],
                      ),
                  
                      const SizedBox(width: 40),
                  
                      Column(
                        children: const  [
                          Icon(Icons.menu, size: 30),
                          Text("Menu")
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}