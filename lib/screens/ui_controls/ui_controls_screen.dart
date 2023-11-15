import 'package:flutter/material.dart';
import 'package:triki_triki2/presentation/appBars/app_bar_custom.dart';

class UiControlsScreen extends StatelessWidget with AppBarCustom {
  static const screenName = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: appBarWithReturnButton(title: 'UI Controls'),
      body: const _UiControlsView(),
    );
  }
}




class _UiControlsView extends StatefulWidget {
  const _UiControlsView();
  @override
  State<_UiControlsView> createState() => _UiControlsViewState();


}

enum Transportation{car, plane, boat, submarine}
class _UiControlsViewState extends State<_UiControlsView> {
bool isDeveloper = true;
Transportation selectedTransportation =Transportation.car;
bool wantsBreakFast = false;
bool wantsLunch = false;
bool wantsDinner = false;

@override
Widget build(BuildContext context) {
  return ListView(
    physics: const ClampingScrollPhysics(),
    children: [
      SwitchListTile(
        title: const Text(' developerMode'),
        value: isDeveloper,
        onChanged: (value) => setState((){
          isDeveloper = !isDeveloper;
        }),
      ),
      ExpansionTile(
        title: const Text('Vehiculo de Transporte'),
        subtitle: Text('$selectedTransportation'),
        children: [
        RadioListTile(
        title:  const Text('by car'),
        subtitle: const Text('Viajar Por Carro'),
        value: Transportation.car,
        groupValue: selectedTransportation,
        onChanged: (value)=> setState(() {
        selectedTransportation=Transportation.car;
        })
        ),
        RadioListTile(
        title:  const Text('by boat'),
        subtitle: const Text('Viajar Por Barco'),
        value: Transportation.car,
        groupValue: selectedTransportation,
        onChanged: (value)=> setState(() {
        selectedTransportation=Transportation.boat;
        })
        ),
                RadioListTile(
        title:  const Text('by plane'),
        subtitle: const Text('Viajar Por Avion'),
        value: Transportation.car,
        groupValue: selectedTransportation,
        onChanged: (value)=> setState(() {
      selectedTransportation=Transportation.plane;
        })
        ),
                RadioListTile(
        title:  const Text('by Submarine'),
        subtitle: const Text('Viajar Por Submarino'),
        value: Transportation.car,
        groupValue: selectedTransportation,
        onChanged: (value)=> setState(() {
      selectedTransportation=Transportation.car;
  }),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('¿Desayuno?'),
          value: wantsBreakFast,
          onChanged: (value) => setState(() {
            wantsBreakFast = !wantsBreakFast;
          }),
          ),
                  CheckboxListTile(
          title: const Text('Almuerzo?'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
          CheckboxListTile(
          title: const Text('Cena?'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsDinner;
                      }),
        ),
      ],
    );
  }
}