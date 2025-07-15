import 'package:ficha_paranormal/models/expertise.dart';
import 'package:ficha_paranormal/modules/record_area/widgets/expertise_test_area_widget.dart';
import 'package:ficha_paranormal/utils/widgets/dice_roll_viewer_widget.dart';
import 'package:flutter/material.dart';

class ExpertiseTestAreaState extends State<ExpertiseTestAreaWidget> {
  int? lastRolledValue;
  late Expertise expertise;

  void callDiceResult(String label, int result) {
    setState(() {
      lastRolledValue = result;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)?.settings.arguments;

    if (args is Expertise) {
      expertise = args;
    } else {
      throw ArgumentError('Erro ao passar perícia para ser testada');
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
                children: expertise.methods.entries.map((possibility) {
                  return ListTile(
                    title: Text(possibility.key),
                    onTap: () {
                      if (lastRolledValue == null) {
                        showDialog(
                          context: context,
                          builder: (_) => const AlertDialog(
                            content: Text('Você precisa rolar um dado primeiro.'),
                          ),
                        );
                        return;
                      }

                      final result = possibility.value.call(lastRolledValue);
                      showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          content: Text(result.toString()),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: DiceRollViewerWidget(
                    onDiceRolled: callDiceResult,
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