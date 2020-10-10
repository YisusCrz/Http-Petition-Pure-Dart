import 'package:http/http.dart' as http;

import 'classes/reqres_respuesta.dart';

void getReqRes_service(){
    // Url de la API
  final url =  'https://reqres.in/api/users?page=2';
  
  // Utilizamos el paquete http con alias 'http' para hacer un get del url y despues obtener la respuesta de esa API 
  http.get(url).then((res) {

    // Se utiliza la instancia de una clase con constructor con nombre la cual recibe el body de la respuesta de la API
    final resReqRes = reqResResponseFromJson(res.body);

    print('Pagina: ${resReqRes.page}');
    print('Per page: ${resReqRes.perPage}');
    print('id del cuarto elemento: ${resReqRes.data[3].id}');


    // final body = json.decode(res.body);

    // print('Pagina: ${body['page']}');
    // print('Per page: ${body['per_page']}');
    // print('id del cuarto elemento: ${body['data'][3]['id']}');

  } );
  
}