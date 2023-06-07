class OnboardingPage {
  String imageUrl;
  String title;
  String description;

  OnboardingPage(this.imageUrl, this.title, this.description);
}

List<OnboardingPage> getOnboardingPage() {
  return <OnboardingPage>[
    OnboardingPage("assets/images/onboarding_1.png", "Quick and Easy.", "Aaaa"),
    OnboardingPage(
        "assets/images/onboarding_2.png", "We've got you covered.", "Bbbb"),
    OnboardingPage(
        "assets/images/onboarding_3.png", "Shop around the world.", "Cccc"),
  ];
}
