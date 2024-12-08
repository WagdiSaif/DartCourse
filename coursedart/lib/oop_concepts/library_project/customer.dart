
class Customer {
  // Attributes
    int customerId;
   String name;
   String email;
   String phoneNumber;
   String address;
  // Constructor
  Customer({
    required this.customerId,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.address,
  });


  void showCustomerDetails() {
    print("Customer Details:");
    print("ID: $customerId");
    print("Name: $name");
    print("Email: $email");
    print("Phone: $phoneNumber");
    print("Address: $address");
  }

  
}
