class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent(
      {required this.image, required this.title, required this.description});
}

List<OnboardingContent> contents = [
  OnboardingContent(
      image: 'assets/images/farmer1.png',
      title: 'Receive grains from farmers',
      description:
          'At the outlets, you can receive grains from farmers and they get paid for the grains received'),
  OnboardingContent(
      image: 'assets/images/farmer2.png',
      title: 'Train farmers',
      description:
          'You have access to lots of materials to use in training all the farmers registered to your outlet.'),
  OnboardingContent(
      image: 'assets/images/farmer3.png',
      title: 'Inspect grains',
      description:
          'As an inspector, you will be able to inspect all the grains supplied by farmers across multiple outlets'),
];
