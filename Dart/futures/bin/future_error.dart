void main() {
  Future(() {
    throw Exception('Algo salió mal');
  }).then((_){
    print('Éxito');
  }).catchError((error){
    print('Error: ${error}');
  });
}