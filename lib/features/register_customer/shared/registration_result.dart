/// Result you care about after registration
class RegisterCustomerResult {
  final String vcid; // public key you’ll navigate with
  final int? customerId; // optional internal id if backend returns it
  final String? message;
  RegisterCustomerResult({required this.vcid, this.customerId, this.message});
}
