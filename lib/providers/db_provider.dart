

import 'package:codigo2_qr/db/db_admin.dart';
import 'package:codigo2_qr/models/qr_model.dart';
import 'package:flutter/material.dart';

class DBProvider extends ChangeNotifier{

  List<QRModel> qrList = [];

  getDataProvider() async{
    qrList = await DBAdmin.db.getQRData();
    notifyListeners();
  }

}