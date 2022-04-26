// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
//
// class ScanQR extends StatefulWidget {
//   @override
//   _ScanQRState createState() => _ScanQRState();
// }
//
// class _ScanQRState extends State<ScanQR> {
//
//   String _scanBarcode = 'Unknown';
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   Future<void> startBarcodeScanStream() async {
//     FlutterBarcodeScanner.getBarcodeStreamReceiver(
//         '#ff6666', 'Cancel', true, ScanMode.BARCODE)!
//         .listen((barcode) => print(barcode));
//   }
//
//   Future<void> scanQR() async {
//     String barcodeScanRes;
//     // Platform messages may fail, so we use a try/catch PlatformException.
//     try {
//       barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
//           '#ff6666', 'Cancel', true, ScanMode.QR);
//       print(barcodeScanRes);
//     } on PlatformException {
//       barcodeScanRes = 'Failed to get platform version.';
//     }
//
//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     if (!mounted) return;
//
//     setState(() {
//       _scanBarcode = barcodeScanRes;
//     });
//   }
//
//   // Platform messages are asynchronous, so we initialize in an async method.
//   Future<void> scanBarcodeNormal() async {
//     String barcodeScanRes;
//     // Platform messages may fail, so we use a try/catch PlatformException.
//     try {
//       barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
//           '#ff6666', 'Cancel', true, ScanMode.BARCODE);
//       print(barcodeScanRes);
//     } on PlatformException {
//       barcodeScanRes = 'Failed to get platform version.';
//     }
//
//     // If the widget was removed from the tree while the asynchronous platform
//     // message was in flight, we want to discard the reply rather than calling
//     // setState to update our non-existent appearance.
//     if (!mounted) return;
//
//     setState(() {
//       _scanBarcode = barcodeScanRes;
//     });
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Scan QR Code"),
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             //Message displayed over here
//             const Text(
//               "Result",
//               style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//             ),
//             Text(
//               _scanBarcode,
//               style: const TextStyle(
//                 fontSize: 20.0,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(
//               height: 20.0,
//             ),
//
//             //Button to scan QR code
//             Padding(
//               padding: EdgeInsets.all(15),
//               child: ButtonTheme(
//                 shape: RoundedRectangleBorder(
//                   side: const BorderSide(color: Colors.indigo),
//                   borderRadius: BorderRadius.circular(20.0),
//                 ),
//                 child: ElevatedButton(
//                   onPressed:  ()=>scanBarcodeNormal(),
//                   child: Text("Start barcode scan",style: TextStyle(color: Colors.indigo[900]),),
//                   //Button having rounded rectangle border
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(15),
//               child: ButtonTheme(
//                 shape: RoundedRectangleBorder(
//                   side: const BorderSide(color: Colors.indigo),
//                   borderRadius: BorderRadius.circular(20.0),
//                 ),
//                 child: ElevatedButton(
//                   onPressed:  ()=>scanQR(),
//                   child: Text("Start QR scan",style: TextStyle(color: Colors.indigo[900]),),
//                   //Button having rounded rectangle border
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(15),
//               child: ButtonTheme(
//                 shape: RoundedRectangleBorder(
//                   side: const BorderSide(color: Colors.indigo),
//                   borderRadius: BorderRadius.circular(20.0),
//                 ),
//                 child: ElevatedButton(
//                   onPressed:  ()=>startBarcodeScanStream(),
//                   child: Text("Start barcode scan stream",style: TextStyle(color: Colors.indigo[900]),),
//                   //Button having rounded rectangle border
//                 ),
//               ),
//             ),
//
//
//           ],
//         ),
//       ),
//     );
//   }
// }
