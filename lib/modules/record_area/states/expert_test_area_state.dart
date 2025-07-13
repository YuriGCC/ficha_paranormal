import 'package:ficha_paranormal/modules/record_area/widgets/expertise_test_area_widget.dart';
import 'package:ficha_paranormal/utils/widgets/dice_roll_viewer_widget.dart';
import 'package:flutter/material.dart';

class ExpertiseTestAreaState extends State<ExpertiseTestAreaWidget> {
  String resultadoMensagem = '';

  void verificarResultado(String label, int result) {
    if (label == 'D20' && result > 15) {
      setState(() {
        resultadoMensagem = 'Habilidade 1: Sucesso! ($result)';
      });
    } else if (label == 'D20') {
      setState(() {
        resultadoMensagem = 'Habilidade 1: Falhou. ($result)';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                const Text(
                  'Teste de Habilidade 1:\nRole um D20, se tirar >10, passa.',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),
                Text(
                  resultadoMensagem,
                  style: TextStyle(
                      fontSize: 20,
                      color: resultadoMensagem.contains('Sucesso')
                          ? Colors.green
                          : Colors.red),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: DiceRollViewerWidget(
                    onDiceRolled: verificarResultado,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}