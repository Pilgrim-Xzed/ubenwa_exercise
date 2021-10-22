

class OnBoardingModel {
  final String? image;
  final String? title;
  final String? desc;


 const OnBoardingModel({this.image, this.title, this.desc});

  
}


const List<OnBoardingModel> screenList = [
    OnBoardingModel(title: "Cutie Baby",image: "assets/pngs/baby.png",desc: "By entering your details, your are agreeing to our Terms of Service and Privacy Policy. Thanks!"),
    OnBoardingModel(title: "Record Cry",image: "assets/pngs/baby_cry.png",desc: "By entering your details, your are agreeing to our Terms of Service and Privacy Policy. Thanks!"),
    OnBoardingModel(title: "Screening Cry",image: "assets/pngs/baby_screening.png",desc: "By entering your details, your are agreeing to our Terms of Service and Privacy Policy. Thanks!"),
];