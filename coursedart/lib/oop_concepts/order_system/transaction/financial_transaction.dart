enum FinancialTransactionStatus { success, failed, pending, refunded }

class FinancialTransaction {
  final String id;
  final String storeId;
  final double amount;
  final double taxAmount;
  final String currency;
  final FinancialTransactionStatus financialTransactionStatus;

  FinancialTransaction({
    required this.id,
    required this.storeId,
    required this.amount,
    required this.taxAmount,
    required this.currency,
    required this.financialTransactionStatus,
  });
}
