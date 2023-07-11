class UserManager<T extends AdminUser>{

  final T admin;

  UserManager(this.admin);
  void sayName(GenericUser user){
    print(user.name);
  }
  int calculateMoney(List<GenericUser> users){
    int sum=0;
    for(var item in users){
      sum+=item.money;
    }
    final sumMoney=users.map((e) => e.money).fold<int>(0, (previousValue, element) => previousValue + element);
    return sum;
  }
}
class GenericUser {
  String name;
  String id;
  int money;

  GenericUser({required this.name,required this.id,required this.money});
}
class AdminUser extends GenericUser{
  final String role;
  AdminUser(this.role, {required super.name, required super.id, required super.money});

}