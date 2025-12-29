import 'package:walaa_pos/core/data/invoice/dto/invoice.dart';


abstract class IInvoiceRepository {
  Future<List<Invoice>> getLatestInvoice({required String timeStamp});
}
