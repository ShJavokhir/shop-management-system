/*
{
	"priceValueOfAllProductsInWarehouse": 335,
	"profitThatCanBeGetFromWarehouse": 124,
	"numberOfProductsInWarehouse": 224,
	"numberOfCustomer": 156,
	"last30DayProfit": 225000,
	"customersDebt": 24000
}
 */

import 'dart:convert';

GeneralSalesInfo welcomeFromJson(String str) => GeneralSalesInfo.fromJson(json.decode(str));

String welcomeToJson(GeneralSalesInfo data) => json.encode(data.toJson());

class GeneralSalesInfo {
  GeneralSalesInfo({
    this.priceValueOfAllProductsInWarehouse,
    this.profitThatCanBeGetFromWarehouse,
    this.numberOfProductsInWarehouse,
    this.numberOfCustomer,
    this.last30DayProfit,
    this.customersDebt,
  });

  double ?priceValueOfAllProductsInWarehouse;
  double ?profitThatCanBeGetFromWarehouse;
  double ?numberOfProductsInWarehouse;
  double ?numberOfCustomer;
  double ?last30DayProfit;
  double ?customersDebt;

  factory GeneralSalesInfo.fromJson(Map<String, dynamic> json) => GeneralSalesInfo(
    priceValueOfAllProductsInWarehouse: json["priceValueOfAllProductsInWarehouse"],
    profitThatCanBeGetFromWarehouse: json["profitThatCanBeGetFromWarehouse"],
    numberOfProductsInWarehouse: json["numberOfProductsInWarehouse"],
    numberOfCustomer: json["numberOfCustomer"],
    last30DayProfit: json["last30DayProfit"],
    customersDebt: json["customersDebt"],
  );

  Map<String, dynamic> toJson() => {
    "priceValueOfAllProductsInWarehouse": priceValueOfAllProductsInWarehouse,
    "profitThatCanBeGetFromWarehouse": profitThatCanBeGetFromWarehouse,
    "numberOfProductsInWarehouse": numberOfProductsInWarehouse,
    "numberOfCustomer": numberOfCustomer,
    "last30DayProfit": last30DayProfit,
    "customersDebt": customersDebt,
  };
}
