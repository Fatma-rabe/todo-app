import 'package:intl/intl.dart';

// String toDateFormatted(DateTime date){
//   DateFormat pattern = DateFormat('dd / MM / yyyy') ;
//   return pattern.format(date);
// }

extension DateFormat on DateTime {
  String get toFormattedDate => '$day / $month / $year';
}
