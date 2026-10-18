import 'package:google_generative_ai/google_generative_ai.dart';

class GeminiService {
  static const String apiKey = String.fromEnvironment('your_gemini_api_key');

  late final GenerativeModel model;

  GeminiService() {
    model = GenerativeModel(
      model: 'gemini-3.6-flash',
      apiKey: apiKey,
    );
  }

  Future<String> sendMessage(String message) async {
    try {
      final response = await model.generateContent([
        Content.text(message),
      ]);

      return response.text ??
          'No response received. Please try again.';
    } on GenerativeAIException catch (e) {
      return 'Gemini error: ${e.message}';
    } catch (e) {
      return 'Something went wrong: $e';
    }
  }
}