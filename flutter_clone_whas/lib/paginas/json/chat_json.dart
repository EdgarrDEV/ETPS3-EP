import 'package:flutter/material.dart';

import 'package:line_icons/line_icons.dart';

const List profile = [
  {
    "name": "Juan Perez",
    "img":
        "https://images.pexels.com/photos/34534/people-peoples-homeless-male.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  }
];

const List chat_data = [
  {
    "name": "Jose Perez",
    "img":
        "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "text": "Hola Juan",
    "date": "24/02/2023"
  },
  {
    "name": "Juan Perez",
    "img":
        "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "text": "Hola Juan Como estas",
    "date": "24/02/2023"
  }
];

List config_secc_uno = [
  {"icon": Icons.star, "text": "Mensajes", "color": Colors.yellow[700]},
  {
    "icon": Icons.laptop,
    "text": "Whatsapp web / Desktop",
    "color": Colors.green[800]
  }
];
List config_secc_dos = [
  {"icon": Icons.lock, "text": "Cuenta", "color": Colors.blue[700]},
  {"icon": Icons.chat_bubble, "text": "Chats", "color": Colors.green[800]},
  {
    "icon": Icons.notification_important,
    "text": "Notificaciones",
    "color": Colors.redAccent
  },
  {
    "icon": LineIcons.database,
    "text": "Almacenar y respaldo",
    "color": Colors.green[800]
  }
];
List config_secc_tres = [
  {"icon": Icons.info_outline, "text": "Ayuda", "color": Colors.blue[600]},
  {
    "icon": Icons.favorite_rounded,
    "text": "Llamar a un amigo",
    "color": Colors.red[400]
  }
];
const List mensajes = [
  {
    "isME": true,
    "message": "Que estas haciendo",
    "time": "18:42",
    "isLAst": false
  },
  {
    "isME": false,
    "message": "Que estas haciendo",
    "time": "18:42",
    "isLAst": true
  }
];
