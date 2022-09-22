class OperationModel {
  String name;
  String selectedIcon;
  String unselectedIcon;

  OperationModel(this.name, this.selectedIcon, this.unselectedIcon);
}

List<OperationModel> datas = operationsData.map((item) =>
    OperationModel(
        item['name'] as String,
        item['selectedIcon'] as String,
        item['unselectedIcon'] as String,
    )
).toList();

var operationsData = [
  {
    "name": "Send",
    "selectedIcon": "assets/svg/money_transfer_white.svg",
    "unselectedIcon": "assets/svg/money_transfer_blue.svg"
  },
  {
    "name": "Request",
    "selectedIcon": "assets/svg/bank_withdraw_white.svg",
    "unselectedIcon": "assets/svg/bank_withdraw_blue.svg"
  },
  {
    "name": "Find ATM",
    "selectedIcon": "assets/svg/insight_tracking_white.svg",
    "unselectedIcon": "assets/svg/insight_tracking_blue.svg"
  },
  {
    "name": "QR Code",
    "selectedIcon": "assets/svg/qr_selected.svg",
    "unselectedIcon": "assets/svg/qr_unselected.svg"
  },
];
