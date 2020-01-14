import 'package:mobx/mobx.dart';
import '../../shared/repository/empresa_repository.dart';
import '../models/empresa.dart';

part 'empresa_controller.g.dart';

class EmpresaController = _EmpresaControllerBase with _$EmpresaController;

abstract class _EmpresaControllerBase with Store {

  final EmpresaRepository repository = EmpresaRepository();

  @observable
  Empresa empresa = Empresa();

  @action
  buscarEmpresaCnpj(String buscaCnpj){
    repository.getCnpjData(buscaCnpj).then(
      (value){
        empresa.fromMap(value);
      }
    );
  }

}


// import 'package:mobx/mobx.dart';
// part 'empresa_controller.g.dart';

// class Empresa = _EmpresaBase with _$Empresa;

// abstract class _EmpresaBase with Store {

//   @observable
//   ObservableMap<String,dynamic> empresa = {
//     "razaoSocial" : "",
//     "data" : "",
//     "email" : "",
//     "cnpj" : "",
//   }.asObservable();

//   @action
//   setKey(String key, String value){
//     try{
//       empresa[key] = value;
//       empresa = ObservableMap<String,dynamic>.linkedHashMapFrom(empresa);
//     } catch(e) {
//       print(e.toString());
//     }
//   }

// }