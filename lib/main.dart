import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/link.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var facebookSVG = '''
<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
     viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve">
<path style="fill:#1976D2;" d="M448,0H64C28.704,0,0,28.704,0,64v384c0,35.296,28.704,64,64,64h384c35.296,0,64-28.704,64-64V64
	C512,28.704,483.296,0,448,0z"/>
    <path style="fill:#FAFAFA;" d="M432,256h-80v-64c0-17.664,14.336-16,32-16h32V96h-64l0,0c-53.024,0-96,42.976-96,96v64h-64v80h64
	v176h96V336h48L432,256z"/>
</svg>
                              ''';
  var kaggleSVG = '''
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24">
    <path d="M18.825 23.859c-.022.092-.117.141-.281.141h-3.139c-.187 0-.351-.082-.492-.248l-5.178-6.589l-1.448 1.374v5.111c0 .235-.117.352-.351.352H5.505c-.236 0-.354-.117-.354-.352V.353c0-.233.118-.353.354-.353h2.431c.234 0 .351.12.351.353v14.343l6.203-6.272c.165-.165.33-.246.495-.246h3.239c.144 0 .236.06.285.18c.046.149.034.255-.036.315l-6.555 6.344l6.836 8.507c.095.104.117.208.07.358"
          fill="#03A9F4"/>
    <rect x="0" y="0" width="24" height="24" fill="rgba(0, 0, 0, 0)"/>
</svg>
''';
  var githubSVG = '''
<svg width="98" height="96" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd"
          d="M48.854 0C21.839 0 0 22 0 49.217c0 21.756 13.993 40.172 33.405 46.69 2.427.49 3.316-1.059 3.316-2.362 0-1.141-.08-5.052-.08-9.127-13.59 2.934-16.42-5.867-16.42-5.867-2.184-5.704-5.42-7.17-5.42-7.17-4.448-3.015.324-3.015.324-3.015 4.934.326 7.523 5.052 7.523 5.052 4.367 7.496 11.404 5.378 14.235 4.074.404-3.178 1.699-5.378 3.074-6.6-10.839-1.141-22.243-5.378-22.243-24.283 0-5.378 1.94-9.778 5.014-13.2-.485-1.222-2.184-6.275.486-13.038 0 0 4.125-1.304 13.426 5.052a46.97 46.97 0 0 1 12.214-1.63c4.125 0 8.33.571 12.213 1.63 9.302-6.356 13.427-5.052 13.427-5.052 2.67 6.763.97 11.816.485 13.038 3.155 3.422 5.015 7.822 5.015 13.2 0 18.905-11.404 23.06-22.324 24.283 1.78 1.548 3.316 4.481 3.316 9.126 0 6.6-.08 11.897-.08 13.526 0 1.304.89 2.853 3.316 2.364 19.412-6.52 33.405-24.935 33.405-46.691C97.707 22 75.788 0 48.854 0z"
          fill="#fff"/>
</svg>
''';
  var linkedinSVG = '''
<svg viewBox="0 0 128 128">
    <g id="original">
        <path fill="#0076b2" d="M116,3H12a8.91,8.91,0,0,0-9,8.8V116.22A8.91,8.91,0,0,0,12,125H116a8.93,8.93,0,0,0,9-8.81V11.77A8.93,8.93,0,0,0,116,3Z"></path>
        <path fill="#fff" d="M21.06,48.73H39.17V107H21.06Zm9.06-29a10.5,10.5,0,1,1-10.5,10.49,10.5,10.5,0,0,1,10.5-10.49"></path>
        <path fill="#fff" d="M50.53,48.73H67.89v8h.24c2.42-4.58,8.32-9.41,17.13-9.41C103.6,47.28,107,59.35,107,75v32H88.89V78.65c0-6.75-.12-15.44-9.41-15.44s-10.87,7.36-10.87,15V107H50.53Z"></path>
    </g>
</svg>
                              ''';
  var twitterSVG = '''
<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
     viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve">
<path style="fill:#03A9F4;" d="M512,97.248c-19.04,8.352-39.328,13.888-60.48,16.576c21.76-12.992,38.368-33.408,46.176-58.016
	c-20.288,12.096-42.688,20.64-66.56,25.408C411.872,60.704,384.416,48,354.464,48c-58.112,0-104.896,47.168-104.896,104.992
	c0,8.32,0.704,16.32,2.432,23.936c-87.264-4.256-164.48-46.08-216.352-109.792c-9.056,15.712-14.368,33.696-14.368,53.056
	c0,36.352,18.72,68.576,46.624,87.232c-16.864-0.32-33.408-5.216-47.424-12.928c0,0.32,0,0.736,0,1.152
	c0,51.008,36.384,93.376,84.096,103.136c-8.544,2.336-17.856,3.456-27.52,3.456c-6.72,0-13.504-0.384-19.872-1.792
	c13.6,41.568,52.192,72.128,98.08,73.12c-35.712,27.936-81.056,44.768-130.144,44.768c-8.608,0-16.864-0.384-25.12-1.44
	C46.496,446.88,101.6,464,161.024,464c193.152,0,298.752-160,298.752-298.688c0-4.64-0.16-9.12-0.384-13.568
	C480.224,136.96,497.728,118.496,512,97.248z"/>
</svg>

                              ''';
  var codewarsSVG = '''
<svg xmlns="http://www.w3.org/2000/svg" width="660" height="660">
  <path fill="#b1361e" d="M321.7 550.8a21 21 0 0112.2-3.6 21 21 0 0117.7 10.5 24.1 24.1 0 0117.8-7.2 24 24 0 0115.7 6.3 26.6 26.6 0 0126.3-19.7 26.5 26.5 0 019.7 2.1v.6c.4-15.7 13-28.2 28.4-28.7a35.5 35.5 0 01-3.3-19.7c1.5-12.3 9.1-22.4 19.4-27.7l.1.1c-5.3-5.5-8.5-13-8.3-21.3a29.6 29.6 0 016.2-17.5 27.3 27.3 0 01-12.1-33.5 24.5 24.5 0 01-22-25 24.7 24.7 0 01.3-3.8 19.8 19.8 0 01-4.2.4 19.8 19.8 0 01-18.7-15.3 17.7 17.7 0 01-10.3 3c-8.2-.3-15-6-16.8-13.7a11.2 11.2 0 01-5.8 1.4 11.2 11.2 0 01-4.8-1.2v-.2a36.4 36.4 0 01-9.7 16 11.2 11.2 0 015.2 5 11.3 11.3 0 01-.2 10.6 17.8 17.8 0 018.8 29.8 19.7 19.7 0 019.6 9c5 9.7 1.1 21.6-8.6 26.6a24.5 24.5 0 015.3 7c6.2 12.1 1.5 27-10.6 33a24.6 24.6 0 01-6 2.2v.1a27.3 27.3 0 01-11.8 36.8 27.1 27.1 0 01-14.7 2.9 29.7 29.7 0 01-17.7 29 17.2 17.2 0 013 5.6.7.7 0 01-.1 0z"/>
  <path fill="#b1361e" d="M623.8 10H38.7A28.7 28.7 0 0010 38.7v577.5a28.7 28.7 0 0028.7 28.7h585.1a28.7 28.7 0 0028.7-28.7V38.7A28.7 28.7 0 00623.8 10zm-26.5 388.8c-3.8 6-9.8 10-16.2 11.6a24.2 24.2 0 01-21.5 39.7 21.8 21.8 0 00-.2-1.1 21 21 0 01-28.8 23.4 17.1 17.1 0 01-2.6 7.5c-2.7 4.3-7 7-11.5 7.7a35.6 35.6 0 01.6 12.2 35.7 35.7 0 01-39.6 31.3h1a29.4 29.4 0 011.5 10.2 29.5 29.5 0 01-30.2 28.7 29.4 29.4 0 01-12.6-3.2 26.6 26.6 0 01-45.4 15.6 24.2 24.2 0 01-45.1 2 21 21 0 01-34.1-13.2 17.1 17.1 0 01-7.8 1.7c-8.7-.2-15.8-7-16.6-15.5l.1-.2a35.5 35.5 0 01-16.9 14 35.7 35.7 0 01-46-18.9 29.4 29.4 0 01-8.2 6.2 29.5 29.5 0 01-39.6-12.8 29.3 29.3 0 01-3.3-12.6 26.6 26.6 0 01-35.3-32.4 24.2 24.2 0 01-23.4-38.6 21 21 0 01-4.7-36.3 17.1 17.1 0 01-5.2-6 17.2 17.2 0 01.3-16.3l.5.1a35.5 35.5 0 01-13.3-6.4 35.7 35.7 0 01-7-49.4 29.4 29.4 0 01-9.4-3.9 29.5 29.5 0 01-9-40.7 29.3 29.3 0 019.3-9.1 26.6 26.6 0 0110-47 24.2 24.2 0 0121.6-39.6l.1 1.1a21 21 0 0128.8-23.5 17.1 17.1 0 012.6-7.5c2.7-4.2 7-6.9 11.6-7.7a35.6 35.6 0 01-.7-12.1 35.7 35.7 0 0138.7-31.4 29.4 29.4 0 01-1.6-10.1c.5-16.3 14-29.2 30.2-28.7a29.3 29.3 0 0112.6 3.1 26.6 26.6 0 0145.4-15.5 24.2 24.2 0 0145.1-2.1 21 21 0 0134.1 13.2 17.1 17.1 0 017.8-1.6c8.8.2 15.8 7 16.7 15.4l-.2.3a35.4 35.4 0 0116.9-14.1c18-7.3 38.4 1.2 46 19A29.4 29.4 0 01451 99a29.5 29.5 0 0139.7 12.8 29.3 29.3 0 013.2 12.6 26.6 26.6 0 0135.4 32.5 24.2 24.2 0 0123.4 38.5 21 21 0 014.7 36.3 17.1 17.1 0 015.1 6 17.2 17.2 0 01-.3 16.4 35.5 35.5 0 0112.9 6.3 35.7 35.7 0 016.9 49.3 29.4 29.4 0 019.4 4 29.5 29.5 0 019 40.6 29.3 29.3 0 01-9.2 9.2 26.6 26.6 0 016.1 35.3z"/>
  <path fill="#b1361e" d="M316.6 99.8a24.1 24.1 0 01-17.8 7.2 24 24 0 01-15.6-6.2 26.6 26.6 0 01-26.4 19.6 26.5 26.5 0 01-9.7-2 29.4 29.4 0 01-28.4 28 35.5 35.5 0 013.3 19.7 35.7 35.7 0 01-19.4 27.7c5.3 5.5 8.4 13 8.2 21.3a29.6 29.6 0 01-6.2 17.4c8.6 4.8 14.2 14 14 24.5a27.2 27.2 0 01-1.9 9 24.5 24.5 0 0122 25.1 24.7 24.7 0 01-.3 3.7 19.8 19.8 0 014.2-.3c9.2.2 16.8 6.7 18.8 15.3a17.7 17.7 0 0110.2-3c8.3.2 15 6 16.9 13.7a11.2 11.2 0 0110.2-.4 36.2 36.2 0 018.1-16.9 11.2 11.2 0 01-3.2-3.8 11.3 11.3 0 01.1-10.5A17.8 17.8 0 01295 259a19.7 19.7 0 01-9.6-9 19.8 19.8 0 0110.3-27.4 20 20 0 00-1.6.7 24.5 24.5 0 01-5.4-7 24.5 24.5 0 0116.7-35.2v-.1a27.3 27.3 0 0111.7-36.7 27.1 27.1 0 0114.8-3 29.7 29.7 0 0116-28.2 30 30 0 011.6-.7 17.2 17.2 0 01-2.9-5.6 21 21 0 01-12.2 3.5 21 21 0 01-17.7-10.6zm214.7 217a35.7 35.7 0 01-13.7-31c-7.4 1.7-15.5.6-22.4-3.9a29.6 29.6 0 01-11.8-14.3 27.3 27.3 0 01-28.1-.7 27.2 27.2 0 01-6.9-6.3c-7.6 10.2-21.9 13-32.8 6a24.8 24.8 0 01-3-2.2 19.8 19.8 0 01-1.8 3.8 19.8 19.8 0 01-22.8 8.1 17.7 17.7 0 01-2.8 10.3c-4.4 7-12.9 9.8-20.4 7.4a11.2 11.2 0 01-1.7 5.7c-.6.9-1.3 1.7-2 2.3a36.3 36.3 0 018.4 15.1 11.2 11.2 0 015-1.1 11.3 11.3 0 019.2 5.2 17.8 17.8 0 0130.4 6.5 19.7 19.7 0 0112.5-4.1c11 .2 19.5 9.3 19.3 20.2a19.8 19.8 0 01-.2 2l.2-1.9a24.5 24.5 0 018.7-1.4 24.5 24.5 0 0124 25.2 24.6 24.6 0 01-1 6.3c15.1.4 27 12.9 26.6 28a27.1 27.1 0 01-4.5 14.3A29.7 29.7 0 01517 444a29.7 29.7 0 01-2 9.7l.1-.2 2.7.5a21 21 0 013.3-12.3 21 21 0 0118.2-9.7 24.1 24.1 0 013-19 24 24 0 0113.5-10 26.6 26.6 0 01-3.3-32.8 26.5 26.5 0 016.9-7.2 29.4 29.4 0 01-9.4-38.9 35.5 35.5 0 01-18.6-7.3z"/>
  <path fill="#b1361e" d="M532.7 236.4a17.2 17.2 0 012.2-2.9 21 21 0 01-8.9-9 21 21 0 01.8-20.6c-6.2-1.8-11.6-6-14.8-12.2a24 24 0 01-2-16.7 26.6 26.6 0 01-29.9-13.7 26.6 26.6 0 01-2.8-9.6 29.4 29.4 0 01-38.2-11.5 35.5 35.5 0 01-15.7 12.3 35.7 35.7 0 01-33.6-3.8v-.3a29.7 29.7 0 01-14.8 17.7 29.6 29.6 0 01-18.3 3 27.3 27.3 0 01-14.8 23.8 27.2 27.2 0 01-8.8 2.8c4.9 11.7 0 25.4-11.5 31.3a24.7 24.7 0 01-3.4 1.5 19.8 19.8 0 012.3 3.5c4.2 8.2 2.1 18-4.5 23.8a17.7 17.7 0 017.5 7.6c3.8 7.3 2 16-4 21.3a11.2 11.2 0 014.1 4.4c.5.9.8 1.8 1 2.7a36.3 36.3 0 0118-.4 11.3 11.3 0 011.5-3.8 11.3 11.3 0 019.1-5.2 17.8 17.8 0 0121.3-22.7 19.7 19.7 0 013-12.8c5.8-9.2 18-11.9 27.2-6a24.5 24.5 0 013.4-8.2 24.5 24.5 0 0134-7.5 24.5 24.5 0 014.8 4.1 27.3 27.3 0 0137.7-8.4 27.1 27.1 0 0110 11.3c9.5-6.4 22.3-7 32.5-.4a29.7 29.7 0 015.6 4.6zm-188 132a11.2 11.2 0 01-1.3-6.4 36.4 36.4 0 01-9 1.1c-3 0-5.9-.3-8.6-1a11.2 11.2 0 01-1.6 7.9 11.3 11.3 0 01-9.2 5.2 17.8 17.8 0 01-21.2 22.6 19.7 19.7 0 01-3 12.8 19.8 19.8 0 01-27.3 6 24.5 24.5 0 01-3.4 8.2 24.5 24.5 0 01-33.9 7.5 24.6 24.6 0 01-4.9-4.1v.1a27.3 27.3 0 01-37.7 8.3 27.1 27.1 0 01-10-11.2c-9.5 6.4-22.2 7-32.5.4a29.8 29.8 0 01-5.6-4.6 17.4 17.4 0 01-2.2 2.8 21 21 0 019 9 21 21 0 01-.9 20.6c6.2 1.8 11.7 6 14.8 12.2a24 24 0 012 16.7 26.6 26.6 0 0130 13.8 26.5 26.5 0 012.7 9.5 29.4 29.4 0 0138.3 11.5 35.5 35.5 0 0115.7-12.3c11.5-4.6 24-2.8 33.6 3.8a29.6 29.6 0 0114.7-17.4 29.6 29.6 0 0118.3-2.9c.1-9.7 5.5-19.1 14.8-23.9a27.3 27.3 0 018.9-2.8c-5-11.7 0-25.4 11.4-31.3a24.6 24.6 0 013.5-1.4 19.7 19.7 0 01-2.4-3.6c-4.2-8.2-2-17.9 4.5-23.7a17.7 17.7 0 01-7.5-7.6c-3.7-7.4-1.9-16.1 4-21.4a11.2 11.2 0 01-4-4.4z"/>
  <path fill="#b1361e" d="M300.4 339.5a11.2 11.2 0 01-6.7 2 11.3 11.3 0 01-9.2-5.1 17.8 17.8 0 01-30.3-6.5 19.7 19.7 0 01-12.6 4c-10.9-.2-19.5-9.3-19.2-20.2a24.5 24.5 0 01-8.8 1.3 24.5 24.5 0 01-22.9-31.5h-.1c-15-.3-27-12.8-26.6-27.9a27.1 27.1 0 014.5-14.3 29.7 29.7 0 01-17.1-27.7 29.7 29.7 0 011.8-9.6 17.4 17.4 0 01-2.7-.5 21 21 0 01-3.3 12.3 21 21 0 01-18.2 9.7c1.6 6.3.7 13.1-3 19a24 24 0 01-13.4 10.1c8.3 8.7 10 22.2 3.2 32.8a26.5 26.5 0 01-6.8 7.2 29.4 29.4 0 019.4 38.8 35.5 35.5 0 0118.5 7.4 35.7 35.7 0 0113.7 30.9c7.5-1.7 15.5-.5 22.5 4a29.6 29.6 0 0111.7 14.2 27.3 27.3 0 0128.1.8 27.2 27.2 0 016.9 6.2c7.6-10.2 22-13 32.8-6a24.6 24.6 0 013 2.3 19.8 19.8 0 011.9-3.8c5-7.8 14.4-10.9 22.8-8.2A17.7 17.7 0 01283 371c4.5-7 13-9.7 20.4-7.3a11.2 11.2 0 016.6-10 36.4 36.4 0 01-9.6-14z"/>
</svg>
''';

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mohamed Hisham Abdelzaher',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF000000)),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Mohamed Hisham Abdelzaher',
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 60,
                      fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                repeatForever: false,
                isRepeatingAnimation: false,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Undergraduate Student',
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                repeatForever: false,
                isRepeatingAnimation: false,
              ),
              const SizedBox(
                height: 20,
              ),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse('MAILTO:mohammedhisham053@gmail.com'),
                builder: (context, followLink) => OutlinedButton(
                  onPressed: followLink,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'mohammedhisham053@gmail.com',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                        ),
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    repeatForever: false,
                    isRepeatingAnimation: false,
                  ),
                ),
              ),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse('MAILTO:mohammedhisham60@outlook.com'),
                builder: (context, followLink) => OutlinedButton(
                  onPressed: followLink,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'mohammedhisham60@outlook.com',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                        ),
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    repeatForever: false,
                    isRepeatingAnimation: false,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse('https://rxresu.me/mohammedhisham053/mh0386'),
                builder: (context, followLink) => OutlinedButton(
                  onPressed: followLink,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'My Resume',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                        ),
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                    repeatForever: false,
                    isRepeatingAnimation: false,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.facebook.com/MH0386'),
                    builder: (context, followLink) => OutlinedButton(
                      onPressed: followLink,
                      child: SvgPicture.string(
                        facebookSVG,
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.Kaggle.com/MH0386'),
                    builder: (context, followLink) => OutlinedButton(
                      onPressed: followLink,
                      child: SvgPicture.string(
                        kaggleSVG,
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.GitHub.com/MH0386'),
                    builder: (context, followLink) => OutlinedButton(
                      onPressed: followLink,
                      child: SvgPicture.string(
                        githubSVG,
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.LinkedIn.com/in/MH0386'),
                    builder: (context, followLink) => OutlinedButton(
                      onPressed: followLink,
                      child: SvgPicture.string(
                        linkedinSVG,
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.Twitter.com/MH0386'),
                    builder: (context, followLink) => OutlinedButton(
                      onPressed: followLink,
                      child: SvgPicture.string(
                        twitterSVG,
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.codewars.com/users/MH0386'),
                    builder: (context, followLink) => OutlinedButton(
                      onPressed: followLink,
                      child: SvgPicture.string(
                        codewarsSVG,
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
