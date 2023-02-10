import 'package:androidflutterfirst/app_constants.dart' as constants;
import 'package:flutter/cupertino.dart';

const String SL_KEY_DEFAULT = '[ data source ]';
const String MAP_SL_KEY_SNO = 'sn';
const String MAP_SL_KEY_KEY = 'key';
const String MAP_SL_KEY_VAL = 'value';

final List<Map<String,dynamic>> dataSourceList = const [
  {
    "sn": 1,
    "key": constants.MODULE_CONTACT_STORAGE_GOOGLE_DRIVE,
    "value": "Google drive"
  },
  {
    "sn": 2,
    "key": constants.MODULE_CONTACT_STORAGE_MONGO_ATLAS,
    "value": "Mongodb cloud"
  }
];

getKeyByValue(String valKey, String val, String key, List<Map<String,dynamic>> map){
  String k = '';
  for (final element in map) {
    if( element[valKey] == val ){
      k = element[key];
      break;
    }
  }
  return k;
}