import 'package:flutter/material.dart';

class TransactionModel {
  String name;
  String photo;
  String date;
  String amount;
  //int imgList;


  TransactionModel(this.name, this.photo, this.date, this.amount);
}

List<TransactionModel> transactions = transactionData
    .map((item) => TransactionModel(
        item['name'] as String, item['photo'] as String, item['date'] as String, item['amount'] as String))
    .toList();

var transactionData = [
  {
    "name": "Uber Ride",
    "photo": "assets/images/uber_photo.png",
    "date": "1st Apr 2020",
    "amount": "-\$35.214"
  },
];
