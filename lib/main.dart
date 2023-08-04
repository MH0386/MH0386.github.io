import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/link.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String courseraLogo = """
  <svg xmlns="http://www.w3.org/2000/svg" width="1000" height="1000" viewBox="0 0 1000 1000" xml:space="preserve">
  <desc>Created with Fabric.js 3.5.0</desc>
  <rect x="0" y="0" fill="#ffffff"/>
  <g transform="matrix(41.6671 0 0 41.6893 502.4996 502.5001)" id="101169">
  <path style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-dashoffset: 0; stroke-linejoin: miter; stroke-miterlimit: 4; fill: rgb(255,255,255); fill-rule: nonzero; opacity: 1;" vector-effect="non-scaling-stroke" transform=" translate(-12.0001, -12.0009)" d="M 11.374 23.977 c -4.183 -0.21 -8.006 -2.626 -9.959 -6.347 c -2.097 -3.858 -1.871 -8.864 0.732 -12.454 C 4.748 1.338 9.497 -0.698 14.281 0.23 c 4.583 0.857 8.351 4.494 9.358 8.911 c 1.122 4.344 -0.423 9.173 -3.925 12.04 c -2.289 1.953 -5.295 2.956 -8.34 2.797 z m 7.705 -8.05 a 588.737 588.737 0 0 0 -3.171 -1.887 c -0.903 1.483 -2.885 2.248 -4.57 1.665 c -2.024 -0.639 -3.394 -2.987 -2.488 -5.134 c 0.801 -2.009 2.79 -2.707 4.357 -2.464 a 4.19 4.19 0 0 1 2.623 1.669 c 1.077 -0.631 2.128 -1.218 3.173 -1.855 c -2.03 -3.118 -6.151 -4.294 -9.656 -2.754 c -3.13 1.423 -4.89 4.68 -4.388 7.919 c 0.54 3.598 3.73 6.486 7.716 6.404 a 7.664 7.664 0 0 0 6.404 -3.563 z" stroke-linecap="round"/>
  </g>
  </svg>
  """;
  String dataCampLogo = """
  <svg xmlns="http://www.w3.org/2000/svg" width="1000" height="1000" viewBox="0 0 1000 1000" xml:space="preserve">
<desc>Created with Fabric.js 3.5.0</desc>
<defs>
</defs>
<rect x="0" y="0" fill="#ffffff"/>
<g transform="matrix(2.5927 0 0 2.5927 500.4588 500.5979)" id="991643">
<path style="stroke: none; stroke-width: 1; stroke-dasharray: none; stroke-linecap: butt; stroke-dashoffset: 0; stroke-linejoin: miter; stroke-miterlimit: 4; fill: rgb(255,255,255); fill-rule: nonzero; opacity: 1;" vector-effect="non-scaling-stroke" transform=" translate(-499.9999, -374.9967)" d="M 515.207031 473.898438 L 515.207031 389.660156 L 648.085938 313.898438 L 615.773438 295.378906 L 515.207031 352.726562 L 515.207031 268.234375 C 515.207031 262.511719 512.121094 257.15625 507.167969 254.316406 L 386.183594 184.894531 C 385.285156 184.40625 384.355469 183.976562 383.398438 183.605469 C 382.449219 183.234375 381.472656 182.929688 380.476562 182.695312 C 379.480469 182.453125 378.46875 182.285156 377.453125 182.175781 C 376.433594 182.070312 375.410156 182.03125 374.386719 182.0625 C 373.367188 182.097656 372.351562 182.195312 371.335938 182.363281 C 370.324219 182.527344 369.328125 182.761719 368.351562 183.058594 C 367.371094 183.359375 366.414062 183.722656 365.480469 184.148438 C 364.550781 184.578125 363.652344 185.058594 362.785156 185.613281 C 361.113281 186.648438 359.601562 187.882812 358.25 189.316406 C 356.902344 190.742188 355.75 192.316406 354.796875 194.035156 C 353.847656 195.753906 353.125 197.570312 352.636719 199.480469 C 352.148438 201.386719 351.90625 203.320312 351.914062 205.285156 L 351.914062 442.882812 C 351.914062 443.386719 351.925781 443.886719 351.960938 444.382812 C 351.992188 444.882812 352.039062 445.378906 352.101562 445.878906 C 352.167969 446.375 352.246094 446.863281 352.335938 447.355469 C 352.433594 447.84375 352.546875 448.332031 352.675781 448.816406 C 352.800781 449.304688 352.941406 449.777344 353.097656 450.253906 C 353.253906 450.730469 353.429688 451.199219 353.621094 451.660156 C 353.808594 452.121094 354.011719 452.578125 354.230469 453.035156 C 354.445312 453.476562 354.679688 453.917969 354.921875 454.355469 C 355.167969 454.792969 355.429688 455.214844 355.703125 455.636719 C 355.976562 456.054688 356.269531 456.464844 356.570312 456.863281 C 356.867188 457.265625 357.179688 457.648438 357.507812 458.035156 C 357.832031 458.410156 358.171875 458.777344 358.523438 459.132812 C 358.875 459.492188 359.230469 459.835938 359.601562 460.167969 C 359.972656 460.507812 360.359375 460.828125 360.75 461.140625 C 361.144531 461.445312 361.542969 461.746094 361.960938 462.023438 C 362.371094 462.3125 362.792969 462.578125 363.222656 462.832031 C 363.652344 463.09375 364.089844 463.332031 364.53125 463.5625 C 364.980469 463.78125 365.429688 463.996094 365.890625 464.199219 C 366.347656 464.394531 366.808594 464.578125 367.285156 464.746094 C 367.753906 464.914062 368.230469 465.066406 368.710938 465.203125 C 369.191406 465.339844 369.675781 465.460938 370.167969 465.566406 C 370.65625 465.675781 371.144531 465.769531 371.640625 465.839844 C 372.136719 465.910156 372.628906 465.96875 373.132812 466.007812 C 373.625 466.054688 374.128906 466.082031 374.628906 466.09375 C 375.128906 466.101562 375.625 466.09375 376.125 466.066406 C 376.628906 466.046875 377.121094 466.007812 377.625 465.957031 C 378.117188 465.898438 378.613281 465.828125 379.101562 465.742188 C 379.597656 465.65625 380.085938 465.546875 380.574219 465.429688 C 381.054688 465.3125 381.542969 465.175781 382.019531 465.027344 C 382.492188 464.875 382.960938 464.714844 383.429688 464.53125 C 383.894531 464.347656 384.355469 464.160156 384.8125 463.945312 C 385.261719 463.738281 385.710938 463.507812 386.152344 463.273438 L 483.152344 407.960938 L 483.152344 483.253906 C 483.152344 484.675781 483.332031 486.0625 483.703125 487.429688 C 484.070312 488.800781 484.617188 490.089844 485.324219 491.316406 C 486.035156 492.539062 486.894531 493.652344 487.898438 494.648438 C 488.90625 495.644531 490.019531 496.496094 491.25 497.199219 L 615.554688 567.941406 L 647.878906 549.421875 Z M 483.164062 277.53125 L 483.164062 371.015625 L 383.976562 427.578125 L 383.976562 220.644531 L 483.164062 277.546875 Z M 483.164062 277.53125" stroke-linecap="round"/>
</g>
</svg>
""";
  String freelancerLogo = """
  <svg xmlns="http://www.w3.org/2000/svg" width="60" height="55">
  <path d="M37.6 8.203l4.36 6.113L64 8.203M14.676 55.797l11.93-11.663-7.18-7.705M35.783 8.203l-6.376 5.75 10.724.4m-29.134-6.15l2.3 4.693 12.62.786M17.753 32.54l9.324-17.393L0 13.683m18.838 19.96l8.807 9.46 9.715-9.523 3.015-17.737-11.84-.604" fill="#ffffff"/>
  </svg>
  """;

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
                      fontSize: (MediaQuery.of(context).size.width * 0.1 <
                              MediaQuery.of(context).size.height * 0.1)
                          ? MediaQuery.of(context).size.width * 0.1
                          : MediaQuery.of(context).size.height * 0.1,
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
                      fontSize: (MediaQuery.of(context).size.width * 0.04 <
                              MediaQuery.of(context).size.height * 0.04)
                          ? MediaQuery.of(context).size.width * 0.04
                          : MediaQuery.of(context).size.height * 0.04,
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
                uri: Uri.parse('MAILTO:mohamed.hisham.abdelzaher@gmail.com'),
                builder: (context, followLink) => OutlinedButton(
                  onPressed: followLink,
                  child: AnimatedTextKit(
                    onTap: followLink,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'mohamed.hisham.abdelzaher@gmail.com',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: (MediaQuery.of(context).size.width * 0.03 <
                                  MediaQuery.of(context).size.height * 0.03)
                              ? MediaQuery.of(context).size.width * 0.03
                              : MediaQuery.of(context).size.height * 0.03,
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
                uri: Uri.parse(
                    'https://rxresu.me/mohamed.hisham.abdelzaher/my-cv'),
                builder: (context, followLink) => OutlinedButton(
                  onPressed: followLink,
                  child: AnimatedTextKit(
                    onTap: followLink,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'My CV',
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                        ),
                        speed: const Duration(milliseconds: 200),
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
                    uri: Uri.parse(
                        'https://www.facebook.com/Mohamed.Hisham.Abdelzaher'),
                    builder: (context, followLink) => IconButton(
                      color: Colors.white,
                      iconSize: (MediaQuery.of(context).size.width * 0.05 <
                              MediaQuery.of(context).size.height * 0.05)
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
                      hoverColor: const Color(0xff0e8cef),
                      icon: const FaIcon(FontAwesomeIcons.facebook),
                      onPressed: followLink,
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.Kaggle.com/MH0386'),
                    builder: (context, followLink) => IconButton(
                      color: Colors.white,
                      iconSize: (MediaQuery.of(context).size.width * 0.05 <
                              MediaQuery.of(context).size.height * 0.05)
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
                      hoverColor: const Color(0xff20bdfd),
                      icon: const FaIcon(FontAwesomeIcons.kaggle),
                      onPressed: followLink,
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.GitHub.com/MH0386'),
                    builder: (context, followLink) => IconButton(
                      color: Colors.white,
                      iconSize: (MediaQuery.of(context).size.width * 0.05 <
                              MediaQuery.of(context).size.height * 0.05)
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
                      hoverColor: Colors.white24,
                      icon: const FaIcon(FontAwesomeIcons.github),
                      onPressed: followLink,
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.LinkedIn.com/in/MH0386'),
                    builder: (context, followLink) => IconButton(
                      color: Colors.white,
                      iconSize: (MediaQuery.of(context).size.width * 0.05 <
                              MediaQuery.of(context).size.height * 0.05)
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
                      hoverColor: const Color(0xff0a66c1),
                      icon: const FaIcon(FontAwesomeIcons.linkedinIn),
                      onPressed: followLink,
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.Twitter.com/MH0386'),
                    builder: (context, followLink) => IconButton(
                      color: Colors.white,
                      iconSize: (MediaQuery.of(context).size.width * 0.05 <
                              MediaQuery.of(context).size.height * 0.05)
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
                      hoverColor: const Color(0xff1d9aef),
                      icon: const FaIcon(FontAwesomeIcons.twitter),
                      onPressed: followLink,
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse(
                        'https://www.Coursera.org/user/985b071f3a43961f7fc46f8061c7377e'),
                    builder: (context, followLink) => IconButton(
                      color: Colors.white,
                      iconSize: (MediaQuery.of(context).size.width * 0.05 <
                              MediaQuery.of(context).size.height * 0.05)
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
                      hoverColor: const Color(0xff0056d1),
                      icon: SvgPicture.string(courseraLogo),
                      onPressed: followLink,
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.datacamp.com/profile/MH0386'),
                    builder: (context, followLink) => IconButton(
                      color: Colors.white,
                      iconSize: (MediaQuery.of(context).size.width * 0.05 <
                              MediaQuery.of(context).size.height * 0.05)
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
                      hoverColor: const Color(0xff03ed62),
                      icon: SvgPicture.string(dataCampLogo),
                      onPressed: followLink,
                    ),
                  ),
                  Link(
                    target: LinkTarget.blank,
                    uri: Uri.parse('https://www.freelancer.com/u/MH0386'),
                    builder: (context, followLink) => IconButton(
                      color: Colors.white,
                      iconSize: (MediaQuery.of(context).size.width * 0.05 <
                              MediaQuery.of(context).size.height * 0.05)
                          ? MediaQuery.of(context).size.width * 0.05
                          : MediaQuery.of(context).size.height * 0.05,
                      hoverColor: const Color(0xff29b2fe),
                      icon: SvgPicture.string(freelancerLogo),
                      onPressed: followLink,
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
