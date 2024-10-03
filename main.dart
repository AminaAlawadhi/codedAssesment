import 'items.dart';

void main() {
  print('Welcome to the Vending Machine!\n');

  // Initialize items
  var item1 = Item('Soda', 2.50);
  var item2 = Item('Chips', 1.50);
  var item3 = Item('Candy', 1.00);

  // Initialize stock
  var stock1 = ItemStock(item1, 10);
  var stock2 = ItemStock(item2, 5);
  var stock3 = ItemStock(item3, 0); // Out of stock

  // Create the vending machine and add items
  var vendingMachine = VendingMachine();
  vendingMachine.addItem(stock1);
  vendingMachine.addItem(stock2);
  vendingMachine.addItem(stock3);

  // Display available items
  vendingMachine.displayItems();

  // Insert money
  print('\nInsert money: \$3.00');
  vendingMachine.insertMoney(3.00);

  // Select item
  print('\nSelect item: Soda');
  vendingMachine.selectItem('Soda');
  vendingMachine.dispenseItem('Soda');

  // Ask for another item
  print('\nDo you want another item? (yes/no): no');

  // Return change
  var change = vendingMachine.getChange();
  print('Returning change: \$${change.toStringAsFixed(2)}');
  print('Thank you for using the vending machine!');
}
