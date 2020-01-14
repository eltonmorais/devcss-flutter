import 'package:consumo_api_cnpj/app/pages/homepage/widgets/form_widget.dart';
import 'package:flutter/material.dart';

import '../../../shared/controllers/empresa_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String resultado;
  final _formKey = GlobalKey<FormState>();
  TextEditingController cnpjController = TextEditingController();
  EmpresaController controller = EmpresaController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consulta CNPJ"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              controller.buscarEmpresaCnpj(cnpjController.text);
            },
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.grey[200],
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: cnpjController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "CNPJ",
                      hintText: "Informe o CNPJ"),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: FormWidget(
                  controller: controller,
                  formKey: _formKey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
