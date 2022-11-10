class ItemDataModel
{
  String? image;
  String? title;
  String? colorText;
  String? size;
  String? qty;
  String? amount;
  ItemDataModel({this.image,this.title,this.colorText,this.size,this.qty,this.amount});
}

List<ItemDataModel> dataList = [
  ItemDataModel(image: "assets/images/nike.png",title: "NikeCourt Lite 2",colorText: "Blue",size: "37",qty: "1",amount: "67"),
  ItemDataModel(image: "assets/images/tennis.png",title: "Wilson Hammer 5.3",colorText: "Black",size: "2-1/4",qty: "1",amount: "80.45"),
];