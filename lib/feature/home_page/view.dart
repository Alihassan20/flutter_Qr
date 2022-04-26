import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../generate_qr/view.dart';
import '../scan_qr/view.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Display Image
              LottieBuilder.network("https://assets10.lottiefiles.com/temp/lf20_PFb8HA.json"),

              //First Button
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.indigo)
                          )
                      )
                  ),
                  onPressed: (){
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ScanQR()));
                  },
                  child: Text("Scan QR Code",style: TextStyle(color: Colors.indigo[900]),),
                ),
              ),
              SizedBox(height: 10),

              //Second Button
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.indigo)
                            )
                        )
                    ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                        GenerateQR()));
                  },
                  child: Text("Generate QR Code", style: TextStyle(color: Colors.indigo[900]),),
                ),
              ),
            ],
          ),
        )
    );
  }
}