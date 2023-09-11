/*WAP to simulate Super Market Billing system in which...

Create multiple customers through array of object.
When each customer is entered (instantiated) note their cust_id, cust_name, cust_contact
Create a menu driven system which gives the customer verities of categories and their products.
Whenever user selects any product simulate the feature to add product in cust_cart which will contain 4 parameters for each product 
pro_id, pro_name, pro_qty, pro_price.
Apply billing and discount criteria's on the final amount after calculating each customer's number of product's price.
                                 10% disc. on 500 - 1500
                                 20% disc. on 1500 - 3500
                                 25% disc. on 3500 - 6500
                                 30% disc. for above all.
add searching functionalities by cust_id which gives cust_id, cust_name, cust_contact, list of products, their price and quantity 
and include final amount and discount amount.*/
import 'dart:io';

class Customer {
  int custId;
  String custName;
  String custContact;
  List<Product> custCart = [];

  Customer(this.custId, this.custName, this.custContact);
}

class Product {
  int proId;
  String proName;
  int proQty;
  double proPrice;

  Product(this.proId, this.proName, this.proQty, this.proPrice);
}

void main() {
  List<Customer> customers = [];

  customers.add(Customer(1, "Neel", "1234567890"));
  customers.add(Customer(2, "Pranav", "9876543210"));

  for (Customer customer in customers) {
    print("Welcome, ${customer.custName}!");
    print("Enter 1 for Electronics, 2 for Groceries, 3 for Clothing:");

    int choice = int.parse(stdin.readLineSync()!);
    simulateShopping(customer, choice);
  }

  for (Customer customer in customers) {
    displayCustomerInfo(customer);
  }
}

void simulateShopping(Customer customer, int choice) {
  switch (choice) {
    case 1:
      customer.custCart.add(Product(101, "Laptop", 1, 1000));
      customer.custCart.add(Product(102, "Phone", 2, 800));
      break;
    case 2:
      customer.custCart.add(Product(201, "Apples", 5, 10));
      customer.custCart.add(Product(202, "Bananas", 6, 8));
      break;
    case 3:
      customer.custCart.add(Product(301, "T-shirt", 2, 20));
      customer.custCart.add(Product(302, "Jeans", 1, 50));
      break;
    default:
      print("Invalid choice");
  }
}

void displayCustomerInfo(Customer customer) {
  print("Customer ID: ${customer.custId}");
  print("Customer Name: ${customer.custName}");
  print("Customer Contact: ${customer.custContact}");

  double totalPrice = 0;
  for (Product product in customer.custCart) {
    print(
        "Product: ${product.proName}, Quantity: ${product.proQty}, Price: ${product.proPrice}");
    totalPrice += product.proQty * product.proPrice;
  }

  double discount = calculateDiscount(totalPrice);
  double finalAmount = totalPrice - discount;

  print("Total Price: $totalPrice");
  print("Discount: $discount");
  print("Final Amount: $finalAmount");
}

double calculateDiscount(double amount) {
  if (amount >= 6500) {
    return amount * 0.3;
  } else if (amount >= 3500) {
    return amount * 0.25;
  } else if (amount >= 1500) {
    return amount * 0.20;
  } else if (amount >= 500) {
    return amount * 0.10;
  } else {
    return 0;
  }
}
