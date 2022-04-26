import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQR extends StatefulWidget {
  @override
  _GenerateQRState createState() => _GenerateQRState();
}

class _GenerateQRState extends State<GenerateQR> {

  String qrData="github.com/alihassan20";
  final qrdataFeed = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    qrdataFeed.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      //Appbar having title
      appBar: AppBar(
        title: Center(child: Text("Generate QR Code")),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(

          //Scroll view given to Column
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              QrImage(data: qrData),
              SizedBox(height: 20),
              Text("Generate QR Code",style: TextStyle(fontSize: 20),),

              //TextField for input link
               TextField(
                controller: qrdataFeed,
                decoration: InputDecoration(
                    hintText: "Enter your link here..."
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                //Button for generating QR code
                child: ButtonTheme(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.indigo),
                  ),
                  child: ElevatedButton(
                    onPressed: ()  {
                      //a little validation for the textfield


                      if (qrdataFeed.text.isNotEmpty) {
                        setState(() {
                          qrData = qrdataFeed.text.toString();
                        });

                      } else {
                        setState(() {
                          qrData = "oops";
                        });
                      }
                    },
                    //Title given on Button
                    child: Text("Generate QR Code",style: TextStyle(color: Colors.indigo[900],),),
                  ),
                ),
              ),
          Text(qrData,style: TextStyle(color: Colors.indigo[900],),)
            ],
          ),
        ),
      ),
    );
  }
}
