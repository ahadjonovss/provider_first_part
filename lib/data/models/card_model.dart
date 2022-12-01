import 'colors_model.dart';

class CreditCard {
  CreditCard({
    required this.id,
    required this.cardType,
    required this.cardNumber,
    required this.bankName,
    required this.moneyAmount,
    required this.cardCurrency,
    required this.expireDate,
    required this.iconImage,
    required this.colors,
  });

  int id;
  String cardType;
  String cardNumber;
  String bankName;
  num moneyAmount;
  String cardCurrency;
  String expireDate;
  String iconImage;
  Colors colors;

  factory CreditCard.fromJson(Map<String, dynamic> json) =>
      CreditCard(
        id: json["id"]??0,
        cardType: json["card_type"]??"",
        cardNumber: json["card_number"]??"",
        bankName: json["bank_name"]??'',
        moneyAmount: json["money_amount"]??0,
        cardCurrency: json["card_currency"] == null
            ? "null"
            : json["card_currency"],
        expireDate: json["expire_date"]??"",
        iconImage: json["icon_image"]??"",
        colors: Colors.fromJson(json["colors"]),
      );
}


