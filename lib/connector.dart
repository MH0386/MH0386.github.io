import 'package:http/http.dart' as http;

sendAlert() async {
  try {
    final response = await http.get(Uri.parse('https://mh0386backend.vercel.app/send?text=Hello_from_Flutter'));
    if (response.statusCode == 200) {
      print('Alert Sent');
    } else {
      print('Failed to send alert: ${response.statusCode}');
    }
  } catch (e) {
    print('Error sending alert: $e');
  }
}