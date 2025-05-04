import 'package:intl/intl.dart';

class HandleData {
 static  String formatDate(String dateTimeString) {
    try {
      DateTime dateTime = DateTime.parse(dateTimeString);
      String formattedDate =
          DateFormat('d MMMM yyyy - hh:mm a').format(dateTime);

      return formattedDate;
    } catch (e) {
      return 'Invalid Date';
    }
  }
}
