enum Currency {
  usd(code: 'USD', symbol: r'$', displayName: 'US Dollar'),
  eur(code: 'EUR', symbol: '€', displayName: 'Euro'),
  azn(code: 'AZN', symbol: '₼', displayName: 'Azerbaijani Manat');

  const Currency({
    required this.code,
    required this.symbol,
    required this.displayName,
  });

  final String code;
  final String symbol;
  final String displayName;

  String format(double amount) {
    return '$symbol${amount.toStringAsFixed(2)}';
  }

  static Currency? fromCode(String code) {
    for (final currency in Currency.values) {
      if (currency.code == code.toUpperCase()) {
        return currency;
      }
    }

    return null;
  }
}
void convert({
  required Currency from,
  required Currency to,
  required double amount,
}) {
  print(
    'Converting ${from.format(amount)} '
    'from ${from.code} to ${to.code}',
  );
}

void main() {
  convert(
    from: Currency.usd,
    to: Currency.azn,
    amount: 100,
  );

  final parsed = Currency.fromCode('eur');

  if (parsed == null) {
    print('Invalid currency code');
  } else {
    print('Parsed currency: ${parsed.displayName}');
  }
}
