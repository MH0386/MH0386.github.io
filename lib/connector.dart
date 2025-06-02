import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

final Logger logger = Logger();
Future<void> sendAlert() async {
  try {
    final response = await http.get(
      Uri.parse(
        'https://mh0386backend.vercel.app/send?text=Hello_from_Flutter',
      ),
    );
    if (response.statusCode == 200) {
      logger.i('Alert Sent');
    } else {
      logger.e('Failed to send alert: ${response.statusCode}');
    }
  } catch (e) {
    logger.e('Error sending alert: $e');
  }
}
