class Data {
  String imagePath;
  String description;
  String title;
  Data({this.description, this.imagePath, this.title});
}

List<Data> dataList = [
  Data(
    imagePath: 'assets/img-1.png',
    title: 'Path', 
    description: 'Select your career path with us'
  ),
  Data(
    imagePath: 'assets/img-2.png',
    title: 'Online Education', 
    description: 'Learn from home, stay updated with the whole world'
  ),
  Data(
    imagePath: 'assets/img-3.png',
    title:'Connect With Others' , 
    description: 'Don\'t just get the knowledge but also make new friends'
  ),
];