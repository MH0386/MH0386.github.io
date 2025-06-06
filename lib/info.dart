class Info {
  static final Info _instance = Info._internal();

  factory Info() {
    return _instance;
  }

  Info._internal();

  // Global variables here
  String name = "Mohamed Hisham Abdelzaher";
  final List<Map<String, String>> socialMediaLinks = [
    {'name': 'Email', 'url': 'mohamed.hisham.abdelzaher@gmail.com'},
    {
      'name': 'Facebook @Mohamed.Hisham.Abdelzaher',
      'url': 'https://facebook.com/Mohamed.Hisham.Abdelzaher',
    },
    {'name': 'Kaggle @MH0386', 'url': 'https://kaggle.com/MH0386'},
    {'name': 'GitHub @MH0386', 'url': 'https://github.com/MH0386'},
    {'name': 'LinkedIn @MH0386', 'url': 'https://linkedin.com/in/MH0386'},
    {'name': 'X @MH0386', 'url': 'https://x.com/MH0386'},
    {'name': 'DataCamp @MH0386', 'url': 'https://datacamp.com/profile/MH0386'},
    {'name': 'HuggingFace @MH0386', 'url': 'https://huggingface.co/MH0386'},
  ];
}
