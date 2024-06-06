import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'package:opnimus_mobile_flutter/models/port.dart';
import 'package:opnimus_mobile_flutter/providers/port.dart';

class PortListScreen extends StatelessWidget {
  const PortListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PortProvider>(
      builder: (BuildContext context, PortProvider portProvider, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: portProvider.ports.length,
                itemBuilder: (context, index) => PortCard(port: portProvider.ports[index]),
              )
            )
          ],
        );
      },
    );
  }
}

class PortCard extends StatelessWidget {
  final PortDynamic port;

  const PortCard({ required this.port, super.key });

  @override
  Widget build(BuildContext context) {
    var titleText = [
      if(port.data?['no_port'] is String) '(${ port.data?['no_port'] })',
      if(port.data?['rtu_sname'] is String) port.data?['rtu_sname']
    ].join(' ');

    var portName = port.data?['port_name'] ?? '';
    var portDescr = port.data?['description'] ?? '';
    var severityText = port.data?['severity']?['name'] ?? '-';
    var valueText = port.getValueText();

    var theme = Theme.of(context);

    return Card.filled(
      color: theme.colorScheme.surfaceContainerHighest,
      surfaceTintColor: theme.colorScheme.surfaceTint,
      elevation: 1,
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              EvaIcons.alertCircleOutline,
              color: Theme.of(context).colorScheme.error,
              size: 30,
            ),
            title: Text(titleText),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(portName),
                Text(portDescr),
                Row(
                  children: [
                    Text(
                      severityText,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(' ($valueText)')
                  ],
                ),
              ],
            )
          ),
        ],
      )
    );
  }
}