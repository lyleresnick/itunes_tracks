import 'package:intl/intl.dart';
DateFormat get inboundDateFormatter => DateFormat("yyyy-MM-dd'T'HH:mm:ssZ");
DateFormat get outboundTimeFormatter => DateFormat("yyyy-MM-dd");// (timezone 'zzz' is not implemented yet)



extension Millis on int {

    int get minutesPartFromMillis {
        return (this.toDouble()/1000.0~/60.0);
    }
    int get secondsPartFromMillis {
        return (this.toDouble()/1000.0 % 60).toInt();
    }

    String formatAsMillis() {
        var leadingZero = "";
        final seconds = this.secondsPartFromMillis;
        if( seconds < 10)
            leadingZero = "0";
        return "${this.minutesPartFromMillis}:$leadingZero${this.secondsPartFromMillis}";
    }
}
