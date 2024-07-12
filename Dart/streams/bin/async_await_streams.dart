//Archivo async_await_streams.dart+

void main() async {
  Stream<int> stream = Stream.periodic(Duration(seconds: 1),(contador)=>contador).take(5);

  await for (var data in stream){
    print("Data recibida: $data");
  }
}