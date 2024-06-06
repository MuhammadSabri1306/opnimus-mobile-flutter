import 'package:opnimus_mobile_flutter/models/user.dart';
import 'package:opnimus_mobile_flutter/models/port.dart';

var exampleUser = BasicUser(
  username: 'cobain.kurt',
  fullName: 'Kurt Cobain',
  email: 'cobain.kurt@test.com',
  phoneNumber: '6285144392944',
  level: UserLevel.witel,
  regional: {
    'regionalId': 2,
    'regionalName': 'DIVISI REGIONAL 7 KAWASAN TIMUR INDONESIA',
  },
  witel: {
    'regionalId': 43,
    'regionalName': 'WITEL MAKASSAR',
  }
);

var examplePorts = PortDynamic.createFromList([
  {
    "result_type": "port",
    "rtu_id": "6RavWqHa0VNcVyZRE5FT",
    "rtu_name": "RTU STO ANTANG",
    "rtu_sname": "RTU00-D7-ANT",
    "ip_rtu": "10.145.122.2",
    "rtu_status": "normal",
    "regional": "DIVISI REGIONAL 7 KAWASAN TIMUR INDONESIA",
    "witel": "WITEL MAKASSAR",
    "location": "ANTANG",
    "id": "I5OVdiCb-LXGGYYJ33Zp",
    "port_name": "AC Voltage PLN",
    "no_port": "A-00",
    "metrics": "RTU00_D7_ANT_PLN_VPP_A_00",
    "description": "PLN.Volt.PP.RS  - ACV_RS",
    "units": "V",
    "created_at": "1704435362451",
    "updated_at": "1707182709783",
    "created_by": "MUHAMMAD SABRI",
    "updated_by": "MUHAMMAD SABRI",
    "identifier": "PLN_VPP",
    "severity": {
        "id": 1,
        "name": "Normal",
        "colors": "#5DCD89"
    },
    "treshold": [],
    "value": 400.90000000000003
  },
  {
    "result_type": "port",
    "rtu_id": "6RavWqHa0VNcVyZRE5FT",
    "rtu_name": "RTU STO ANTANG",
    "rtu_sname": "RTU00-D7-ANT",
    "ip_rtu": "10.145.122.2",
    "rtu_status": "normal",
    "regional": "DIVISI REGIONAL 7 KAWASAN TIMUR INDONESIA",
    "witel": "WITEL MAKASSAR",
    "location": "ANTANG",
    "id": "EkMzYGci2qVF1ovDjLrh",
    "port_name": "AC Voltage PLN",
    "no_port": "A-01",
    "metrics": "RTU00_D7_ANT_PLN_VPP_A_01",
    "description": "PLN.Volt.PP.ST - ACV_ST",
    "units": "V",
    "created_at": "1704435362450",
    "updated_at": "1707182712535",
    "created_by": "MUHAMMAD SABRI",
    "updated_by": "MUHAMMAD SABRI",
    "identifier": "PLN_VPP",
    "severity": {
        "id": 1,
        "name": "Normal",
        "colors": "#5DCD89"
    },
    "treshold": [],
    "value": 398.40000000000003
}
]);