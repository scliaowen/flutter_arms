abstract class BaseModel{

  BaseModel();

  BaseModel.formJson(Map<String,dynamic> json);

  Map<String,dynamic> toJson();
}