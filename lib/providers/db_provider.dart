

import 'package:codigo2_qr/db/db_admin.dart';
import 'package:codigo2_qr/models/qr_model.dart';
import 'package:flutter/material.dart';

class DBProvider extends ChangeNotifier{

  List<QRModel> qrList = [];
  bool isLoading = false;

  Future<void> getDataProvider() async{
    isLoading = true;
    notifyListeners();

    qrList = await DBAdmin.db.getQRData();

    isLoading = false;
    notifyListeners();
  }

}