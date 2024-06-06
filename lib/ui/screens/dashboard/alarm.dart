import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'package:opnimus_mobile_flutter/models/alarm.dart';
import 'package:opnimus_mobile_flutter/providers/alarm.dart';

class AlarmListScreen extends StatelessWidget {
  const AlarmListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AlarmProvider>(
      builder: (BuildContext context, AlarmProvider alarmProvider, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: alarmProvider.alarms.length,
                itemBuilder: (context, index) => AlarmCard(alarm: alarmProvider.alarms[index]),
              )
            )
          ],
        );
      },
    );
  }
}

class AlarmCard extends StatelessWidget {
  final Alarm alarm;

  const AlarmCard({ required this.alarm, super.key });

  @override
  Widget build(BuildContext context) {
    var titleText = [
      if(alarm.data?['no_port'] is String) '(${ alarm.data?['no_port'] })',
      if(alarm.data?['rtu_sname'] is String) alarm.data?['rtu_sname']
    ].join(' ');

    var portName = alarm.data?['port_name'] ?? '';
    var portDescr = alarm.data?['description'] ?? '';
    var severityText = alarm.data?['severity']?['name'] ?? '-';
    var valueText = alarm.getValueText();

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