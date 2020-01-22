import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_widget.dart';
import 'modules/home/home_module.dart';

class AppModule extends MainModule{

  @override
  // Array de injeção de dependência
  // posso recuperar de qualquer parte do aplicativo
  List<Bind> get binds => null;

  @override
  // TODO: implement bootstrap
  Widget get bootstrap => AppWidget();

  @override
  // Rotas para os formulários da aplicação
  List<Router> get routers => [
    Router( '/' , module: HomeModule() ),
  ];

}