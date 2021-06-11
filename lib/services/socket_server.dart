import 'package:socket_io/socket_io.dart';
class SockerServerService {
  late String port;
  SockerServerService({required this.port}){2
    this._createSocketServer();
  }
  SockerServerService.withoutParameters(){
    this.port='50000';
    this._createSocketServer();
  }
   void _createSocketServer() {
    // Dart server
    var io = new Server();
    io.on('connection', (client) {
      print('connection default namespace');
      client.on('msg', (data) {
        print('data from default => $data');
        client.emit('fromServer', "ok");
      });
    });
    io.listen(this.port);
  }
}