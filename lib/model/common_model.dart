class CommonModel{
  final String icon;
  final String title;
  final String url;
  final bool hideAppBar;
  final String statusBarColor;

  CommonModel({this.icon, this.title, this.url, this.hideAppBar, this.statusBarColor});
  factory CommonModel.fromJson(Map<String, dynamic> json){
    return CommonModel(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
      hideAppBar: json['hideAppBar'],
      statusBarColor: json['statusBarColor']
    );
  }
}