import 'package:flutter/material.dart';
import 'package:zebra_raya/data/test_zpl.dart';
import 'package:zebra_raya/services/socket_server.dart';


class HomePage extends StatefulWidget {
  static final routeName = 'home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //  late ZebraPrinter _zebraPrinter;
  final server = new SockerServerService.withoutParameters();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zebra app'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15.0),
            width: double.infinity,
            child: MaterialButton(
              onPressed: () => server.createSocketServer(),
              child: Text('Iniciar Servidor Socket'),
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            width: double.infinity,
            child: MaterialButton(
              onPressed: () => server.deleteSocketServer(),
              child: Text('Cerrar Servidor Socket'),
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  // void _buscarImpresoras() async {
  //   _zebraPrinter = await Zebrautility.getPrinterInstance(
  //       onPrinterFound: onPrinterFound,
  //       onPrinterDiscoveryDone: onPrinterDiscoveryDone,
  //       onChangePrinterStatus: onChangePrinterStatus,
  //       onPermissionDenied: onPermissionDenied);

  //   _zebraPrinter.discoveryPrinters();
  //   _zebraPrinter.connectToPrinter("58:93:D8:31:04:C9");
  // }

  // dynamic onPrinterFound(name, ipAddress, t) {
  //   print("PrinterFound :" + name + ipAddress);
  // }

  // dynamic onPrinterDiscoveryDone() {
  //   print("Discovery Done");
  // }

  // dynamic onChangePrinterStatus(status, color) {
  //   print("change printer status: " + status + color);
  // }

  // dynamic onPermissionDenied() {
  //   print("Permission Deny.");
  // }

  // void _print() {
  //   _zebraPrinter.print(testZPL);
  // }
}
