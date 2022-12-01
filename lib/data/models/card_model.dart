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
    required this.cardCrrency,
  });

  int id;
  String cardType;
  String cardNumber;
  String bankName;
  int moneyAmount;
  String cardCurrency;
  DateTime expireDate;
  String iconImage;
  Colors colors;
  String cardCrrency;

  factory CreditCard.fromJson(Map<String, dynamic> json) =>
      CreditCard(
        id: json["id"],
        cardType: json["card_type"],
        cardNumber: json["card_number"],
        bankName: json["bank_name"],
        moneyAmount: json["money_amount"],
        cardCurrency: json["card_currency"] == null
            ? null
            : json["card_currency"],
        expireDate: DateTime.parse(json["expire_date"]),
        iconImage: json["icon_image"],
        colors: Colors.fromJson(json["colors"]),
        cardCrrency: json["card_crrency"] == null ? null : json["card_crrency"],
      );
}


