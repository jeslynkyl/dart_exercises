void main() {
  String studentName='Jeslyn Kyl Sesma';
  String itemName='Wireless Mouse';
  int quantity=4;
  double unitPrice=49.50;
  double memberDiscRate=0.10;
  bool isMember=true;
  double payment=200.0;
  int itemsPerPack=3;
  
  double subtotal=quantity*unitPrice;
  double discountAmount=subtotal*memberDiscRate;
  double total=subtotal-discountAmount;
  double change=payment-total;
  int fullPacks=quantity~/itemsPerPack;
  int looseItems=quantity%itemsPerPack;
  
  //operators
  bool isOver100=total>100;
  bool isPaymentEnough=payment>=total;
  bool isExactPayment=payment==total;
  bool hasLooseItems=looseItems!=0;
  
  //output
  print('==== Store Purchase Receipt ====');
  print('Customer: $studentName');
  String priceText=unitPrice.toStringAsFixed(2);
  print('Item: $itemName x $quantity at PHP $priceText each');
  print('Member: $isMember');
  print('Subtotal: PHP ${subtotal.toStringAsFixed(2)}');
  print('Discount: PHP ${discountAmount.toStringAsFixed(2)}');
  print('Total: PHP ${total.toStringAsFixed(2)}');
  print('Payment: PHP ${payment.toStringAsFixed(2)}');
  print('Change: PHP ${change.toStringAsFixed(2)}');
  
  print('--- Pack Breakdown ---');
  print('Full packs of $itemsPerPack: $fullPacks');
  print('Loose items left over: $looseItems');
  
  print('--- Checks ---');
  print('Is the total over 100? $isOver100');
  print('Is the payment enough? $isPaymentEnough');
  print('Is the payment exact? $isExactPayment');
  print('Are there loose items? $hasLooseItems');
  
  quantity++;
  double newTotal=quantity*unitPrice*(1-memberDiscRate);
  print('--- After adding one more item ---');
  print('New Quantity: $quantity');
  print('New Total: PHP ${newTotal.toStringAsFixed(2)}');
}
