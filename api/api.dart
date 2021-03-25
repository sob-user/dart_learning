import 'dart:io';

Future main() async {
  var server = await HttpServer.bind(
    InternetAddress.loopbackIPv4,
    5000,
  );
  print('Server started on port: ${server.port}');

  await for (HttpRequest request in server) {
    request.response.write('Hello You!');
    await request.response.close();
  }
}
